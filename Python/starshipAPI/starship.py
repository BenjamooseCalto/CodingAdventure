import requests
import json

URL = 'https://starshipstatus.space/api/data' #api by @NoahPrail on Twitter

class Data:
    def __init__(self, url):
        self.url = url

    def update(self):
        self.r = requests.get(self.url)
        self.r = self.r.json()
        with open('starshipAPI/data.txt', 'w') as file:
            json.dump(self.r, file, indent=4)
    
    def build_index(self):
        self.tfrs = self.r['tfrs']
        self.closures = self.r['closures']
        self.weather = self.r['weather']
        self.update_date = self.r['lastUpdatedDate']
        self.location = Location(self.tfrs[0])
        self.tfr1 = FlightRestriction(self.tfrs[0])

    def build_info(self):
        self.num_tfrs = 0
        self.num_closures = 0
        for tfr in self.tfrs:
            if tfr['isActive'] == True:
                self.num_tfrs += 1
        for closure in self.closures:
            if closure['isActive'] == True:
                self.num_closures += 1
        self.weather_real = f'in {self.tfrs[0]["details"]["location"]["city"]}, {self.tfrs[0]["details"]["location"]["state"]}: {self.weather["weather"][0]["description"]} @ {self.weather["main"]["temp"]} degrees (feels like {self.weather["main"]["feels_like"]} degrees)'
    
    def show_data(self):
        print(f'Number of TFR\'s active: {self.num_tfrs}')
        print(f'Number of Active Road Closures: {self.num_closures}')
        print(f'Current Weather {self.weather_real}')
        print(self.tfr1)

class Location:
    def __init__(self, tfr):
        self.location = tfr['details']['location']
        self.state = self.location['state']
        self.city = self.location['city']

    def __str__(self):
        return f'Location: {self.location["city"]}, {self.location["state"]}'

class FlightRestriction:
    def __init__(self, tfr):
        self.location = data.location
        self.tfr = tfr
        self.airspace = {'upper':self.tfr['details']['airspace']['upper'], 'lower':self.tfr['details']['airspace']['lower']}

    def __str__(self):
        return f'TFR upper: {self.airspace["upper"]["value"]}{self.airspace["upper"]["unit"]} TFR lower: {self.airspace["lower"]["value"]}{self.airspace["lower"]["unit"]}\nReason for TFR: Space Operations Area'


data = Data(URL)
data.update()
data.build_index()
data.build_info()
data.show_data()
