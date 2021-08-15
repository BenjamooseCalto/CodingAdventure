import requests
import os
import webbrowser

from dotenv import load_dotenv

load_dotenv()
NASA_API_KEY = os.getenv('NASA_API_KEY')
X_RAPIDAPI_KEY = os.getenv('RAPID_API_KEY')

#astronomy picture of the day
apod_url = 'https://api.nasa.gov/planetary/apod'
apod = requests.get(f'{apod_url}?api_key={NASA_API_KEY}')
apod = apod.json()
webbrowser.open(apod['hdurl'])

#mars weather
insight_url = 'https://api.nasa.gov/insight_weather/'
insight = requests.get(f'{insight_url}?api_key={NASA_API_KEY}&feedtype=json&ver=1.0')
insight = insight.json()
#print(insight)

#adsb exchange, live flight traffic near a given position
adsb_url = 'https://adsbexchange-com1.p.rapidapi.com/json/lat/33.11242239034239/lon/-96.70656619502142/dist/50/'
adsb_headers = {'x-rapidapi-key': X_RAPIDAPI_KEY, 'x-rapidapi-host': 'adsbexchange-com1.p.rapidapi.com'}
adsb_response = requests.request('GET', adsb_url, headers=adsb_headers)
#print(adsb_response.text)