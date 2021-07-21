import logging
from datetime import datetime

def get_UTC_Offset(): #who knows if this abomination works
    utc = datetime.utcnow()
    utc = utc.hour
    local = datetime.now()
    local = local.hour
    if local == 0:
        diff = utc
        diff = utc * -1
    else:
        diff = local - utc
    return diff

def get_dst(): #only verified for Texas
    localtime = datetime.now()
    month = localtime.month
    day = localtime.day
    hour = localtime.hour
    if 3 <= month <= 11:
        if month == 3:
            if day >= 14:
                if hour >= 2:
                    return True
                else:
                    return False
            else: 
                return False
        elif month == 11:
            if day <= 7:
                if hour >= 2:
                    return False
                else:
                    return True
            else:
                return False
        else:
            return True
    else:
        return False

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
        elif event == 'cleanchat':
            count = kwargs['count']
            if count == 0:
                logging.info(f'[{dt}][UTC{utcOffset}]>- {user} tried to clean the chat in Guild:{guildid} | Removed {count} messages')
            else:
                logging.info(f'[{dt}][UTC{utcOffset}]>- {user} cleaned the chat in Guild:{guildid} | Removed {count} messages')
            print('Event Logged')
        elif event == 'openai':
            engine = kwargs['engine']
            input = kwargs['input']
            logging.info(f'[{dt}][UTC{utcOffset}]>- {user} made an OpenAI call using {engine} in Guild:{guildid} | Input: {input}')
            print('Event Logged')

def convert_temperature(endunit, input):
    if endunit == 'imp':
        f = int((input * (9/5)) + 32)
        response = (f'{input}\N{DEGREE SIGN}C is {f}\N{DEGREE SIGN}F')
    elif endunit == 'met':
        c = int((input - 32) * (5/9))
        response = (f'{input}\N{DEGREE SIGN}F is {c}\N{DEGREE SIGN}C')
    return response

def convert_distance(endunit, input):
    if endunit == 'imp':
        mi = int(input / 1.609)
        response = (f'{input} kilometers is {mi} miles')
    elif endunit == 'met':
        km = int(input * 1.609)
        response = (f'{input} miles is {km} kilometers')
    return response



        