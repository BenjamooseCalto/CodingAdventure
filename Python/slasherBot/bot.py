import os
import discord
import random
import typing
import requests

from random import randrange
from discord.channel import CategoryChannel
from discord_slash.context import InteractionContext
from dotenv import load_dotenv
from discord.ext import commands
from discord.utils import get
from discord_slash import SlashCommand, SlashContext
from discord_slash.utils.manage_commands import create_choice, create_option

load_dotenv()
TOKEN = os.getenv('DISCORD_TOKEN')
GUILDID = os.getenv('DISCORD_GUILDID')
GUILDNAME = os.getenv('DISCORD_GUILDNAME')
APPID = os.getenv('DISCORD_APPID')

GUILDID = int(GUILDID)

bot = commands.Bot(command_prefix='!', intents=discord.Intents.all())
slash = SlashCommand(bot, sync_commands=True)

def isOwner(author):
    owner = "Pwnsome#0367"
    if str(author) == str(owner):
        return True
    else:
        return False

@bot.event
async def on_ready():
    print(f'{bot.user.name} has connected to Discord!')

@bot.command(name='roll')
async def roll(ctx, arg, arg2: typing.Optional[int] = 1): #arg: die size arg2: number of times to roll
    print('Roll Received!')
    author = ctx.author
    rolls = []
    rollTotal = 0
    num1 = int(arg)
    if arg2 is not int:
        num2 = int(arg2)
    if author.nick is None:
        caller = author.name
    else:
        caller = author.nick

    formattedRolls = f'{caller}\'s Roll(s):\n'
    for x in range(1, num2+1):
        roll = randrange(num1)
        if roll == 0: roll += 1
        rolls.append(str(roll))

    for i, val in enumerate(rolls):
        if i == 10: break
        formattedRolls += f'> Roll {i+1}: {val}\n'
        rollTotal = rollTotal + int(val)
    
    if num2 > 1: formattedRolls += f'> Total: {rollTotal}'
    await ctx.send(formattedRolls)

@bot.command(name='cleanchat')
async def cleanchat(ctx):
    if isOwner(ctx.author):
        channel = discord.utils.get(bot.get_all_channels(), name='the-game-garage')
        async for message in channel.history():
            if message.content == '[Original Message Deleted]':
                await message.delete()
                print('message deleted')

@bot.command(name='dumpmessages')
async def dumpmessages(ctx):
    print('Dump Received!')
    author = ctx.author
    guild = ctx.guild
    channel = ctx.channel
    fileName = f'slasherBot/data/{str(guild)}_{str(channel.name)}.txt'
    if isOwner(author):
        data = open(fileName, 'a')
        async for message in channel.history():
            content = str(message.content) + '\n'
            if '<:' in content:
                pass
            elif content == '\n':
                pass
            else:
                try: 
                    data.write(content)
                except:
                    pass
        data.close()

@slash.slash(
    name='Roll the Bones',
    description='Rolls some dice',
    guild_ids=[GUILDID],
    options=[
        create_option(
            name='Die Size',
            description='Choose the size of the die you wish to roll',
            required=True,
            option_type=4
        ),
        create_option(
            name='Roll Count',
            description='Choose the number of times you wish to roll',
            required=False,
            option_type=4
        )
    ]
)
async def slashRoll(ctx:SlashContext, option1:int, option2:int=1):
    print('Roll Received!')
    author = ctx.author
    rolls = []
    rollTotal = 0
    num1 = int(option1)
    if option2 is not int:
        num2 = int(option2)
    if author.nick is None:
        caller = author.name
    else:
        caller = author.nick

    formattedRolls = f'{caller}\'s Roll(s):\n'
    for x in range(1, num2+1):
        roll = randrange(num1)
        if roll == 0: roll += 1
        rolls.append(str(roll))

    for i, val in enumerate(rolls):
        if i == 10: break
        formattedRolls += f'> Roll {i+1}: {val}\n'
        rollTotal = rollTotal + int(val)
    
    if num2 > 1: formattedRolls += f'> Total: {rollTotal}'
    await ctx.send(formattedRolls)


#url = f'https://discord.com/api/v8/applications/{APPID}/commands'

bot.run(TOKEN)