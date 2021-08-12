import requests

from jsondiff import diff
from time import time, sleep

API_KEY = 'RGAPI-3e062e6b-be03-4887-b1e5-d38c71752973'
API_URL = 'na1.api.riotgames.com'
LIVEGAMEDATA_URL = 'https://127.0.0.1:2999/liveclientdata' #/allgamedata /activeplayer /activeplayername /activeplayerabilities
ENDPOINT = '/allgamedata'

def get_data():
    try:
        r = requests.get(f'{LIVEGAMEDATA_URL}{ENDPOINT}', verify='riotAPI/riotgames.pem', timeout=7)
    except (requests.ConnectionError, requests.Timeout) as exception:
        print(exception)
        r = False
    finally:
        if r:
            r = r.json()
            dump_json(r)
            return True
        else: 
            return False

def dump_json(r):
    with open('riotAPI/log.txt', 'a') as file:
        new = diff(r, file)
        file.write(new)

while True:
    sleep(30)
    if get_data() == False:
        print('Connection Lost')
        break
    else:
        pass



'''
I need to log an API response (json) to a file, but then keep track of data as it updates, without overwriting old data.

I'm building a script to track my stats/abiltiies/items in league of legends throughout the course of a game, so I'm going to have a lot of the same data being fed in, and
I need a way to filter it and pick out ONLY the new information from each successive API call.

Could I just compare each line and throw away the ones that don't change?
'''