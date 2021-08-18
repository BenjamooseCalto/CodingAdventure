import requests
import json

URL = 'https://starshipstatus.space/api/data' #api by @NoahPrail on Twitter

class Data:
    def __init__(self, url, update=False):
        self.url = url
        if update == True:
            self.update()
        else:
            with open('starshipAPI/data.txt', 'r') as file:
                self.r = json.load(file)
        self.build_index()

    def update(self):
        self.r = requests.get(self.url)
        self.r = self.r.json()
        with open('starshipAPI/data.txt', 'w') as file:
            json.dump(self.r, file, indent=4)
    
    def build_index(self):
        self.weather = Weather(self.r['weather'])
        self.update_date = self.r['lastUpdatedDate']
        self.location = Location(self.r['tfrs'][0])
        self.tfrs = []
        self.closures = []
        for tfr in self.r['tfrs']:
            self.tfrs.append(FlightRestriction(tfr))
        for closure in self.r['closures']:
            self.closures.append(RoadClosure(closure))
        self.num_tfrs = 0
        self.num_closures = 0
        for tfr in self.tfrs:
            if tfr.status == True:
                self.num_tfrs += 1
        for closure in self.closures:
            if closure.status == True:
                self.num_closures += 1
    
    def show(self):
        string = (f'''\
Number of TFR\'s active: {self.num_tfrs}
Number of Active Road Closures: {self.num_closures}
Current Weather in {self.location}: {self.weather}
Last Updated: {self.update_date}''')
        for closure in self.closures:
            if closure.active == True:
                print(closure)
        print(string)

class Location:
    def __init__(self, tfr):
        self.location = tfr['details']['location']
        self.state = self.location['state']
        self.city = self.location['city']

    def __str__(self):
        return f'{self.location["city"]}, {self.location["state"]}'

class FlightRestriction:
    def __init__(self, tfr):
        self.tfr = tfr
        self.airspace = {'upper':self.tfr['details']['airspace']['upper'], 'lower':self.tfr['details']['airspace']['lower']}
        self.status = tfr['isActive']

    def __str__(self):
        return f'TFR upper: {self.airspace["upper"]["value"]}{self.airspace["upper"]["unit"]} TFR lower: {self.airspace["lower"]["value"]}{self.airspace["lower"]["unit"]}\nReason for TFR: Space Operations Area'

class Weather:
    def __init__(self, weather):
        self.main = weather
        self.details = weather['weather']
        self.description = self.details[0]['description']
        self.temperature = self.main['main']
        self.visibility = self.main['visibility']
        self.wind = self.main['wind']
        self.degree_sign = u'\N{DEGREE SIGN}'
    
    def __str__(self):
        return self.format('temp')

    def format(self, type):
        if type == 'wind':
            if self.wind['gust'] - self.wind['speed'] > 7:
                return f'{(self.wind["deg"])}@{int(self.wind["speed"])}G{int(self.wind["gust"])} (knots)'
            else:
                return f'{int(self.wind["deg"])}@{int(self.wind["speed"])} (knots)'
        if type == 'temp':
            if abs(self.temperature['feels_like'] - self.temperature['temp']) > 5:
                return f'{self.temperature["temp"]}{self.degree_sign}c, feels like {self.temperature["feels_like"]}{self.degree_sign}c'

class RoadClosure:
    def __init__(self, closure):
        self.info = closure
        self.status = self.get_status(self.info)
        self.active = self.info['isActive']

    def __str__(self):
        return f'''\
            Closure Time: {self.info['originalTime']}
            Closure Status: {self.info['status']}
            '''

    def get_status(self, info):
        status = {'active': info['isActive'], 'cancel': info['isCanceled'], 'revoked': info['isRevoked'], 'conclude': info['isConcluded'], 'removed': info['isRemoved']}
        if status['active'] == True:
            return 'Active'
        elif status['cancel'] == True:
            return 'Cancelled'
        elif status['revoked'] == True:
            return 'Revoked'
        elif status['conclude'] == True:
            return 'Concluded'
        elif status['removed'] == True:
            return 'Removed'

data = Data(URL, update=True)
data.show()
print(data.tfrs[0])
