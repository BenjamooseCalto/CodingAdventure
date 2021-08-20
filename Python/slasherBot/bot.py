import os
import discord
import openai
from requests.api import options
import modules.slasherUtils as Slasher
import modules.starship.starship as SlasherShip

from discord_slash.model import SlashCommandPermissionType
from random import randrange, randint
from discord.channel import CategoryChannel
from discord_slash.context import InteractionContext
from dotenv import load_dotenv
from discord.ext import commands
from discord.utils import get
from discord_slash import SlashCommand, SlashContext
from discord_slash.utils.manage_commands import create_choice, create_option, create_permission

load_dotenv()
TOKEN = os.getenv('DISCORD_TOKEN')
GUILDNAME = os.getenv('DISCORD_GUILDNAME')
TESTGUILDID = int(os.getenv('DISCORD_TESTGUILDID'))
TESTADMINROLE = int(os.getenv('DISCORD_TESTADMINROLE'))
LIVEGUILDID = int(os.getenv('DISCORD_LIVEGUILDID'))
LIVEOWNERROLE = int(os.getenv('DISCORD_LIVEOWNERROLE'))
LIVEADMINROLE = int(os.getenv('DISCORD_LIVEADMINROLE'))
LIVEADMINROLE2 = int(os.getenv('DISCORD_LIVEADMINROLE2'))
APPID = os.getenv('DISCORD_APPID')
OWNER = str(os.getenv('OWNER'))
OPENAI_FINE_TUNE_MODEL = str(os.getenv('FINE_TUNE_MODEL'))
openai.api_key = os.getenv('OPENAI_API_KEY')

bot = commands.Bot(command_prefix='!', intents=discord.Intents.all())
slash = SlashCommand(bot, sync_commands=True)

def isOwner(author):
    if str(author) == str(OWNER):
        return True
    else:
        return False

@bot.event
async def on_ready():
    print(f'{bot.user.name} has connected to Discord!')

@slash.slash( #this command removes the [Original Message Deleted] messages from the free games channel
    name='cleanchat',
    description='Cleans old messages from free games channel',
    guild_ids=[LIVEGUILDID, TESTGUILDID],
    permissions={
        LIVEGUILDID: [
            create_permission(LIVEOWNERROLE, SlashCommandPermissionType.ROLE, True),
            create_permission(LIVEADMINROLE, SlashCommandPermissionType.ROLE, True),
            create_permission(LIVEADMINROLE2, SlashCommandPermissionType.ROLE, True)
        ],
        TESTGUILDID: [
            create_permission(TESTADMINROLE, SlashCommandPermissionType.ROLE, True)
        ]
    }
)
async def cleanchat(ctx:SlashContext):
    channel = discord.utils.get(bot.get_all_channels(), name='the-game-garage')
    i = 0
    async for message in channel.history():
        if message.content == '[Original Message Deleted]':
            i += 1
            await message.delete()
            print('message deleted')
    Slasher.logToFile(ctx.author, ctx.guild_id, 'cleanchat', count=i)

@slash.slash( #this rolls the bones, needs to be rewritten. inputs are size, and count - size is the size of the die, count is how many dice you wish to roll
    name='roll',
    description='Rolls some dice',
    guild_ids=[TESTGUILDID, LIVEGUILDID],
    options=[
        create_option(
            name='size',
            description='Choose the size of the die you wish to roll',
            required=True,
            option_type=4
        ),
        create_option(
            name='count',
            description='Choose the number of times you wish to roll (max 10)',
            required=False,
            option_type=4
        )
    ]
)
async def slashRoll(ctx:SlashContext, size:int, count:int=1): #this was one of the first "complex" functions I wrote, definitely needs to be redone.
    print('Roll Received!')
    author = ctx.author
    rolls = []
    rollTotal = 0
    size = int(size)
    if author.nick is None:
        caller = author.name
    else:
        caller = author.nick
    formattedRolls = f'{caller}\'s Roll(s):\n'
    for x in range(1, count+1):
        roll = randrange(size)
        if roll == 0: roll += 1
        rolls.append(str(roll))
    for i, val in enumerate(rolls):
        if i == 10: break
        formattedRolls += f'> Roll {i+1}: {val}\n'
        rollTotal = rollTotal + int(val)
    if count > 1: formattedRolls += f'> Total: {rollTotal}'
    Slasher.logToFile(author, ctx.guild_id, 'roll', size=size, count=count, rolls=rollTotal)
    await ctx.send(formattedRolls)

@slash.slash( #this is currently being reworked - in the future it will just listen for chat messages instead of requiring a slash command
    name='convert',
    description='Convert Metric units to Imperial',
    guild_ids=[TESTGUILDID, LIVEGUILDID],
    options=[
        create_option(
            name='type',
            description='Choose the type of units to convert',
            required=True,
            option_type=3,
            choices=[
                create_choice(
                    name='temperature',
                    value='temp'
                ),
                create_choice(
                    name='distance',
                    value='dist'
                ),
                create_choice(
                    name='mass',
                    value='mass'
                )
            ]
        ),
        create_option(
            name='endunit',
            description='Unit to convert to',
            required=True,
            option_type=3,
            choices=[
                create_choice(
                    name='Imperial',
                    value='imp'
                ),
                create_choice(
                    name='Metric',
                    value='met'
                )
            ]
        ),
        create_option(
            name='input',
            description='Input',
            required=True,
            option_type=4
        )
    ]
)
async def convert(ctx:SlashContext, type:str, endunit:str, input:int):
    print('Convert Request Received!')
    if type == 'temp':
        response = Slasher.convert_temperature(endunit, input)
    elif type == 'dist':
        response = Slasher.convert_distance(endunit, input)
    elif type == 'mass':
        pass
    await ctx.send(response)
    
@slash.slash( #this makes an OpenAI API call to finish your sentences, limited to Ada only for now because it's the cheapest model
    name='openai',
    description='Have OpenAI attempt to finish your sentence',
    guild_ids=[TESTGUILDID, LIVEGUILDID],
    options=[
        create_option(
            name='engine',
            description='AI Engine',
            required=True,
            option_type=3,
            choices=[
                create_choice(
                    name='ada',
                    value='ada'
                ),
                create_choice(
                    name='davinci',
                    value='davinci'
                ),
                create_choice(
                    name='curie',
                    value='curie'
                )
            ]
        ),
        create_option(
            name='input',
            description='Enter a sentence',
            required=True,
            option_type=3
        )
    ]
)
async def finishSentence(ctx:SlashContext, input, engine):
    print(input)
    if engine == 'ada':
        response = openai.Completion.create(
            engine=OPENAI_FINE_TUNE_MODEL,
            prompt=input,
            temperature=0.9,
            max_tokens=50,
            top_p=1,
            frequency_penalty=0.0,
            presence_penalty=0.6,
            stop='\n'
        )
        response = response['choices'][0]['text']
        
    Slasher.logToFile(ctx.author, ctx.guild_id, 'openai', engine=engine, input=input)
    await ctx.send('Input: ' + input + '\n\n' + input + response)

@slash.slash( #this is not done, for now it can be used to make the bot DM people a message. In the future it will generate some kind of old english roast or something and DM it to a user
    name='roast',
    description='Roast a fella',
    guild_ids=[TESTGUILDID, LIVEGUILDID],
    options=[
        create_option(
            name='name',
            description='Who will be roasted?',
            required=True,
            option_type=3
        ),
        create_option(
            name='roast',
            description='The roast to be inflicted',
            required=False,
            option_type=3
        )
    ]
)
async def roast(ctx:SlashContext, name, roast=None):
    print('Roast Request Received!')
    guild = ctx.guild
    target = None
    for member in guild.members:
        if member.display_name == name:
            target = bot.get_user(member.id)
    if roast:
        message = roast
    else:
        message = 'reserved for future roasts'
    if target is None:
        print('Name not found')
        await ctx.author.send('Name not found')
    else:
        print('Roast Sent')
        await target.send(message)

@slash.slash( #this is part of the mini-casino, much more to be added, most of this functions though
    name='flip',
    description='Flip some coins',
    guild_ids=[TESTGUILDID, LIVEGUILDID],
    options=[
        create_option(
            name='bet',
            description='What side will it land on?',
            required=True,
            option_type=3
        )
    ]
)
async def slashFlip(bet):
    flip = randint(0,1)
    side = 'heads' if flip == 0 else 'tails'
    outcome = 'won!' if side == bet else 'lost!'
    print(f'The coin lands on {side}. You{outcome}')

@slash.slash( #this uses my fine-tuned OpenAI model to pick out useful information from messages regarding unit conversions, work-in-progress
    name='converttest',
    description='convert with ai or something',
    guild_ids=[TESTGUILDID, LIVEGUILDID],
    options=[
        create_option(
            name='prompt',
            description='convert something',
            required=True,
            option_type=3
        )
    ]
)
async def convert_test(ctx:SlashContext, prompt):
    response = openai.Completion.create(
        model=OPENAI_FINE_TUNE_MODEL,
        prompt=prompt,
        temperature=0.9,
        max_tokens=50,
        top_p=1,
        frequency_penalty=0.0,
        presence_penalty=0.6,
        stop='\n'
    )
    response = response['choices'][0]['text']
    final_response = response.replace(' ->', '')
    await ctx.send(f'Prompt: {prompt}\nResult: {final_response}')

@slash.slash( #this returns data from the starship status API, more details on that in Python/starshipAPI
    name='starship',
    description='Check up on Starship',
    guild_ids=[TESTGUILDID, LIVEGUILDID],
    options=[
        create_option(
            name='request',
            description='Request specific information',
            required=False,
            option_type=3,
            choices=[
                create_choice(
                    name='TFR',
                    value='tfr'
                ),
                create_choice(
                    name='roads',
                    value='roads'
                )
            ]
        )
    ]
)
async def starship(ctx:SlashContext, request):
    data = SlasherShip.StarshipStatus(update=True)
    await ctx.send(data.show(request))

bot.run(TOKEN)
