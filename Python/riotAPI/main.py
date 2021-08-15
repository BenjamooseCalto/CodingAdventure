import requests
import os

from dotenv import load_dotenv
from time import time, sleep

load_dotenv()
API_KEY = os.getenv('RIOT_API_KEY')
API_URL = 'na1.api.riotgames.com'
CERT = 'riotAPI/riotgames.pem'
LIVEGAMEDATA_URL = 'https://127.0.0.1:2999/liveclientdata' #/allgamedata /activeplayer /activeplayername /activeplayerabilities
ENDPOINT = '/allgamedata'

class ClientData:
    def __init__(self, **kwargs):
        if kwargs:
            self.api_key = kwargs['api_key']
            self.api_url = kwargs['api_url']
            self.endpoint = kwargs['endpoint']
            self.verify = kwargs['verify']
            if kwargs['timeout']:
                self.timeout = kwargs['timeout']
            else:
                self.timeout = 5
    
    def get_data(self):
        try:
            r = requests.get(f'{self.api_url}{self.endpoint}', verify=self.verify, timeout=self.timeout)
        except (requests.ConnectionError, requests.Timeout) as exception:
            print(exception)
            r = False
        finally:
            if r:
                r = r.json()
                print(r)
                self.dump_json(r)
                return True
            else: 
                return False
    
    def dump_json(self, r):
        separator = '-----------------------------------------'
        with open('riotAPI/log.txt', 'a') as file:
            file.write(separator)
            file.write(r, indent=4)
    
    def run(self):
        while True:
            if self.get_data() == False:
                print('Connection Lost')
                break
            else:
                pass
            sleep(180)

data = ClientData(api_key=API_KEY, api_url=LIVEGAMEDATA_URL, endpoint=ENDPOINT, verify=CERT, timeout=7)
data.run()