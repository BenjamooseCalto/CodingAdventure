from asyncio.windows_events import NULL
from inspect import Traceback
import os
import discord
import random
import typing

from random import randrange
from discord.channel import CategoryChannel
from dotenv import load_dotenv
from discord.ext import commands
from discord.utils import get
from discord_slash import SlashCommand, SlashContext

load_dotenv()
token = os.getenv('DISCORD_TOKEN')
guildID = os.getenv('DISCORD_GUILD')
guildname = os.getenv('DISCORD_GUILDNAME')

bot = commands.Bot(command_prefix='/', intents=discord.Intents.all())
slash = SlashCommand(bot)

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
    channel = discord.utils.get(bot.get_all_channels(), name='the-game-garage')
    async for message in channel.history():
        if message.content == '[Original Message Deleted]':
            await message.delete()
            print('message deleted')

@bot.command(name='dumpmessages')
async def dumpmessages(ctx):
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

@bot.event
async def on_message(ctx):
    guild = ctx.guild
    channel = ctx.channel
    fileName = f'slasherBot/data/{str(guild)}_{str(channel.name)}.txt'
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
        
bot.run(token)