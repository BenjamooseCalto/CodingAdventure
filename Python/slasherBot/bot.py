import os
import discord
import openai
import modules.slasherUtils as Slasher

from modules.math.threex import magicmath
from modules.starship.starship import StarshipStatus
from modules.nasa.nasa import apod
from discord_slash.model import SlashCommandPermissionType
from random import randrange, randint
from discord.channel import CategoryChannel
from discord_slash.context import InteractionContext
from dotenv import load_dotenv
from discord.ext import commands
from discord.utils import get
from discord_slash import SlashCommand, SlashContext
from discord_slash.utils.manage_commands import (
    create_choice,
    create_option,
    create_permission,
)

load_dotenv()
TOKEN = os.getenv("DISCORD_TOKEN")
GUILDNAME = os.getenv("DISCORD_GUILDNAME")
TESTGUILDID = int(os.getenv("DISCORD_TESTGUILDID"))
TESTADMINROLE = int(os.getenv("DISCORD_TESTADMINROLE"))
LIVEGUILDID = int(os.getenv("DISCORD_LIVEGUILDID"))
LIVEOWNERROLE = int(os.getenv("DISCORD_LIVEOWNERROLE"))
LIVEADMINROLE = int(os.getenv("DISCORD_LIVEADMINROLE"))
LIVEADMINROLE2 = int(os.getenv("DISCORD_LIVEADMINROLE2"))
APPID = os.getenv("DISCORD_APPID")
OWNER = str(os.getenv("OWNER"))
OPENAI_FINE_TUNE_MODEL = str(os.getenv("FINE_TUNE_MODEL"))
openai.api_key = os.getenv("OPENAI_API_KEY")

bot = commands.Bot(command_prefix="!", intents=discord.Intents.all())
slash = SlashCommand(bot, sync_commands=True)


def isOwner(author):
    if str(author) == str(OWNER):
        return True
    else:
        return False


@bot.event
async def on_ready():
    print(f"{bot.user.name} has connected to Discord!")


@slash.slash(  # this command removes the [Original Message Deleted] messages from the free games channel
    name="cleanchat",
    description="Cleans old messages from free games channel",
    guild_ids=[LIVEGUILDID, TESTGUILDID],
    permissions={
        LIVEGUILDID: [
            create_permission(LIVEOWNERROLE, SlashCommandPermissionType.ROLE, True),
            create_permission(LIVEADMINROLE, SlashCommandPermissionType.ROLE, True),
            create_permission(LIVEADMINROLE2, SlashCommandPermissionType.ROLE, True),
        ],
        TESTGUILDID: [
            create_permission(TESTADMINROLE, SlashCommandPermissionType.ROLE, True)
        ],
    },
)
async def cleanchat(ctx: SlashContext):
    channel = discord.utils.get(bot.get_all_channels(), name="the-game-garage")
    i = 0
    async for message in channel.history():
        if message.content == "[Original Message Deleted]":
            i += 1
            await message.delete()
            print("message deleted")
    Slasher.logToFile(ctx.author, ctx.guild_id, "cleanchat", count=i)


@slash.slash(  # this rolls the bones, inputs are size, and count - size is the size of the die, count is how many dice you wish to roll
    name="roll",
    description="Rolls some dice",
    guild_ids=[TESTGUILDID, LIVEGUILDID],
    options=[
        create_option(
            name="size",
            description="Choose the size of the die you wish to roll",
            required=True,
            option_type=4,
        ),
        create_option(
            name="count",
            description="Choose the number of times you wish to roll (max 10)",
            required=False,
            option_type=4,
        ),
    ],
)
async def slashRoll(
    ctx: SlashContext, size: int, count: int = 1
):  # rewrote this function, i think it looks way better now, but its still probably not the best way to do this
    author = ctx.author
    rolls = []
    i = 0
    while True:
        i += 1
        rolls.append(randint(1, size))
        if i >= count:
            break

    embed = discord.Embed(
        title="The Bones",
        description=f"{author.display_name}'s Rolls: ",
        colour=discord.Colour.red(),
    )
    embed.set_footer(text=f"This is not rigged in any way.")
    embed.set_author(name=author.display_name, icon_url=author.avatar_url)
    n = 1
    for roll in rolls:
        embed.add_field(name=f"Roll {n}:", value=roll, inline=False)
        n += 1

    embed.add_field(name="Total: ", value=sum(rolls), inline=False)
    await ctx.send(embed=embed)


@slash.slash(  # this makes an OpenAI API call to finish your sentences, limited to Ada only for now because it's the cheapest model
    name="openai",
    description="Have OpenAI attempt to finish your sentence",
    guild_ids=[TESTGUILDID, LIVEGUILDID],
    options=[
        create_option(
            name="input", description="Enter a sentence", required=True, option_type=3
        )
    ],
)
async def finishSentence(ctx: SlashContext, input):
    print(input)
    response = openai.Completion.create(
        engine="ada",
        prompt=input,
        temperature=0.9,
        max_tokens=50,
        top_p=1,
        frequency_penalty=0.0,
        presence_penalty=0.6,
        stop="\n",
    )
    response = response["choices"][0]["text"]

    Slasher.logToFile(ctx.author, ctx.guild_id, "openai", engine="ada", input=input)
    await ctx.send("Input: " + input + "\n\n" + input + response)


@slash.slash(  # this is part of the mini-casino, much more to be added, most of this works though
    name="flip",
    description="Flip some coins",
    guild_ids=[TESTGUILDID, LIVEGUILDID],
    options=[
        create_option(
            name="bet",
            description="What side will it land on?",
            required=True,
            option_type=3,
        )
    ],
)
async def slashFlip(bet):
    flip = randint(0, 1)
    side = "heads" if flip == 0 else "tails"
    outcome = "won!" if side == bet else "lost!"
    print(f"The coin lands on {side}. You {outcome}")


@slash.slash(  # this uses my fine-tuned OpenAI model to pick out useful information from messages regarding unit conversions, work-in-progress
    name="converttest",
    description="convert with ai or something",
    guild_ids=[TESTGUILDID, LIVEGUILDID],
    options=[
        create_option(
            name="prompt", description="convert something", required=True, option_type=3
        )
    ],
)
async def convert_test(ctx: SlashContext, prompt):
    response = openai.Completion.create(
        model=OPENAI_FINE_TUNE_MODEL,
        prompt=prompt,
        temperature=0.9,
        max_tokens=50,
        top_p=1,
        frequency_penalty=0.0,
        presence_penalty=0.6,
        stop="\n",
    )
    response = response["choices"][0]["text"]
    final_response = response.replace(" ->", "")
    await ctx.send(f"Prompt: {prompt}\nResult: {final_response}")


@slash.slash(  # this returns data from the starship status API, more details on that in modules/starship
    name="starship",
    description="Check up on Starship",
    guild_ids=[TESTGUILDID, LIVEGUILDID],
)
async def starship(ctx: SlashContext):
    data = StarshipStatus(update=True)
    embed = discord.Embed(
        title="Starship Status",
        description="Weather, TFRs, and Road Closure Information",
        colour=discord.Colour.blue(),
    )
    embed.set_footer(text=f"Last Updated: {data.update_date}")
    embed.set_author(name=ctx.author.display_name, icon_url=ctx.author.avatar_url)
    embed.add_field(
        name=f"Current Weather in {data.location}:", value=data.weather, inline=False
    )
    embed.add_field(name="Active TFR's:", value=data.num_tfrs, inline=False)
    embed.add_field(
        name="Active Road Closures: ", value=data.num_closures, inline=False
    )
    for closure in data.closures:
        embed.add_field(name=f"Closure:", value=closure, inline=False)

    await ctx.send(embed=embed)


@slash.slash(  # this uses NASA's astronomy picture of the day API to give you a cool picture
    name="apod",
    description="Astronomy Picture of the Day",
    guild_ids=[TESTGUILDID, LIVEGUILDID],
)
async def slashApod(ctx: SlashContext):
    await ctx.send(apod())


@slash.slash(
    name="threex",
    description="Math Magic",
    guild_ids=[TESTGUILDID, LIVEGUILDID],
    options=[
        create_option(
            name="number",
            description="see how many steps it will take to converge to 1",
            required=True,
            option_type=4,
        )
    ],
)
async def three_x(ctx: SlashContext, number):
    await ctx.send(f"> {magicmath(number)}")


bot.run(TOKEN)
