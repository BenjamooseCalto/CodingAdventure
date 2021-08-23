import requests
import os

from dotenv import load_dotenv

load_dotenv()
NASA_API_KEY = os.getenv('NASA_API_KEY')
X_RAPIDAPI_KEY = os.getenv('RAPID_API_KEY')

#astronomy picture of the day
def apod():
    apod_url = 'https://api.nasa.gov/planetary/apod'
    apod = requests.get(f'{apod_url}?api_key={NASA_API_KEY}')
    apod = apod.json()
    return apod['hdurl']

#mars weather
def insight():
    insight_url = 'https://api.nasa.gov/insight_weather/'
    insight = requests.get(f'{insight_url}?api_key={NASA_API_KEY}&feedtype=json&ver=1.0')
    insight = insight.json()
    print(insight)

def main():
    pass

if __name__ == '__main__':
    insight()