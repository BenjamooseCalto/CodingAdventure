import os
import discord
import random
import typing

from random import randrange
from dotenv import load_dotenv
from discord.ext import commands
from discord.utils import get

#features list: roll the bones, assign roles

load_dotenv()
token = os.getenv('DISCORD_TOKEN')
guild = os.getenv('DISCORD_GUILD')

bot = commands.Bot(command_prefix='/')
#guild = discord.utils.get(bot.guilds, name='SlasherBot')

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

@bot.command(name='corgi7welcome') #remember to change to "on join"
async def corgi7welcome(ctx):
    channel = bot.get_channel(857866916436901919)
    #D20 = get(guild.get_all_emojis(), name='D20')
    #reactions = [D20, 'money_with_wings']
    welcomeString = (f"""> **-Roles-**\n > Click on the reaction images to assign yourself the roles!""")
    msg = await channel.send(welcomeString)
    #for emoji in reactions:
    #    await msg.add_reaction(emoji)

@bot.command(name='test')
async def test(ctx):
    emo = guild.name
    print(emo)

bot.run(token)