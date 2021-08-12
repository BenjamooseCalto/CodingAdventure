import os
import discord
import statistics as st
import sqlite3

from sqlite3 import Error
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
APPID = os.getenv('DISCORD_APPID')
OWNER = str(os.getenv('OWNER'))

db = sqlite3.connect('casinovaBot/users.db')
def create_table():
    dbcursor = db.cursor()
    dbcursor.execute('''CREATE TABLE IF NOT EXISTS users (
                    id integer PRIMARY KEY,
                    name text NOT NULL,
                    coins integer NOT NULL 
                    );''')

userInfo = (1, 'bongo', 69)
def add_user_data(db, userInfo):
    sql = '''INSERT INTO users(id, name, coins)
    VALUES(?,?,?)'''

    cur = db.cursor()
    cur.execute(sql, userInfo)
    db.commit()
    return cur.lastrowid

def update_user_data(db, id, name=None, coins=None):
    cur = db.cursor()
    if name:
        sql = '''UPDATE users SET name = ? WHERE id = ?'''
        info = (name, id)
        cur.execute(sql, info)
        print('name')
    elif coins:
        sql = '''UPDATE users SET coins = ? WHERE id = ?'''
        info = (coins, id)
        cur.execute(sql, info)
        print('coins')
    elif name and coins:
        sql = '''UPDATE users SET name = ? , coins = ? WHERE id = ?'''
        info = (name, coins, id)
        cur.execute(sql, info)
        print('both')
    db.commit()

update_user_data(db, 1, coins=100)

#/roll (bet)
def slashFlip(bet:int, guess):
    flip = randint(0,1)
    if flip == 0:
        side = 'heads'
    else: side = 'tails'

 # {'id': 1, }
    if side == guess:
        outcome = 'won!'
    else:
        outcome = 'lost!'
        
    print(f'The coin lands on {side}. You{outcome}')
    

#Needs line adding bet to user koin balance
def slashRoll(bet:int):
    rollList = []
    for _ in range(4):
        roll = randint(1, 6)
        rollList.append(roll)

    botRolls = [rollList[0], rollList[1]]
    humanRolls = [rollList[2], rollList[3]]

    botSum = sum(botRolls)
    humanSum = sum(humanRolls)

    if humanSum > botSum:
        outcome = 'won!'
    elif botSum > humanSum:
        outcome = 'lost!'
    else:
        outcome = 'tied.'

    print(f'Human: {humanRolls} \nBot: {botRolls}')
    print(f'You rolled {humanSum} and the bot rolled {botSum} \nYou {outcome}')
#Needs line adding bet to user koin balance

