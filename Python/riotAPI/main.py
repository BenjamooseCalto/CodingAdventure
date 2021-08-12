import requests
import os

from dotenv import load_dotenv
from jsondiff import diff
from time import time, sleep

load_dotenv()
API_KEY = os.getenv('RIOT_API_KEY')
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