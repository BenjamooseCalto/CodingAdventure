import requests
import os

from dotenv import load_dotenv

load_dotenv()
NASA_API_KEY = os.getenv('NASA_API_KEY')

#astronomy picture of the day
def apod():
    apod_url = 'https://api.nasa.gov/planetary/apod'
    apod = requests.get(f'{apod_url}?api_key={NASA_API_KEY}')
    apod = apod.json()
    return apod['hdurl']

def main():
    pass

if __name__ == '__main__':
    main()