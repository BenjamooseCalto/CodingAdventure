import os
import discord
import random
import typing
import logging

from slasherUtils import get_UTC_Offset
from datetime import date
from datetime import datetime
from discord_slash.model import SlashCommandPermissionType
from random import randrange
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

@slash.slash(
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
    logToFile(ctx.author, ctx.guild_id, 'cleanchat', count=i)
        


@slash.slash(
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
async def slashRoll(ctx:SlashContext, size:int, count:int=1):
    print('Roll Received!')
    author = ctx.author
    rolls = []
    rollTotal = 0
    num1 = int(size)
    if count is not int:
        num2 = int(count)
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
    logToFile(author, ctx.guild_id, 'roll', size=size, count=count, rolls=rollTotal)
    await ctx.send(formattedRolls)


def logToFile(user, guildid, event, **kwargs):
    day = datetime.now()
    utcOffset = get_UTC_Offset()
    dt = day.strftime('%m/%d/%y|%H:%M:%S')
    logging.basicConfig(filename='slasherBot/data/bot.log', encoding='utf-8', level=logging.INFO)
    if kwargs:
        if event == 'roll':
            count = kwargs['count']
            size = kwargs['size']
            total = kwargs['rolls']
            logging.info(f'[{dt}][UTC{utcOffset}]>- {user} rolled a {count}d{size} in Guild:{guildid} | Result: {total}')
            print('Event Logged')
        if event == 'cleanchat':
            count = kwargs['count']
            if count == 0:
                logging.info(f'[{dt}][UTC{utcOffset}]>- {user} tried to clean the chat in Guild:{guildid} | Removed {count} messages')
            else:
                logging.info(f'[{dt}][UTC{utcOffset}]>- {user} cleaned the chat in Guild:{guildid} | Removed {count} messages')
                print('Event Logged')


bot.run(TOKEN)