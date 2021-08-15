import os
import json

from random import randint, randrange, choice

# {"prompt":"convert 180 km to miles", "completion":"180 km miles"}
# {"prompt":"convert 180 c to f", "completion":"180 c f"}
# {"prompt":"convert 180 meters to feet", "completion":"180 meters feet"}
# we can split the completion into words and use that to check the types of units

class DataGenerator():
    #add units as required, hierarchy UNITS > DISTANCE|TEMPERATURE|MASS > units_TYPE
    UNITS = {'dist':['met', 'imp', 'mar'], 'temp':['celsius', 'fahrenheit', 'kelvin'], 'mass':['met', 'imp']}
    MET_DISTANCE = ['meter', 'kilometer', 'centimeter', 'millimeter', 'micrometer', 'decimeter', 'nanometer', 'megameter', 'm', 'km', 'cm', 'mm']
    IMP_DISTANCE = ['inch', 'feet', 'yard', 'mile', 'league', 'in', 'ft', 'yd', 'mi']
    MAR_DISTANCE = ['fathom', 'nm'] #nm for nautical mile
    DISTANCE = {'met':MET_DISTANCE, 'imp':IMP_DISTANCE, 'mar':MAR_DISTANCE}
    TEMPERATURE = {'celsius': ['celsius', 'c'], 'fahrenheit': ['fahrenheit', 'f'], 'kelvin': ['kelvin', 'k']}
    MET_MASS = ['gram', 'kilogram', 'ton', 'g', 'kg', 't']
    IMP_MASS = ['ounce', 'pound', 'stone', 'oz', 'lb', 'st'] #st is stone
    MASS = {'met':MET_MASS, 'imp':IMP_MASS}

    def __init__(self):
        pass

    def generate_data(self, type, bounds): #type is the type of unit, distance, temperature, mass, etc.
        self.units = self.generate_units(type)
        self.number = randrange(0, 5000) if bounds == 'high' else randrange(0, 1000)
        self.to_into = 'into' if randint(0, 1) == 0 else 'to'
        self.space = ' ' if randint(0, 1) == 0 else ''
        self.line = {"prompt":f"convert {self.number}{self.space}{self.units[0]} {self.to_into} {self.units[1]}", "completion":f"{self.number} {self.units[0]} {self.units[1]}\n"}
        self.write_data(self.line)
    
    def generate_units(self, type):
        valid = False
        while valid == False:
            unit_1 = choice(self.UNITS[type])
            unit_2 = choice(self.UNITS[type])
            if unit_1 != unit_2:
                valid = True
                break
        if type == 'dist':
            units = (choice(self.DISTANCE[unit_1]), choice(self.DISTANCE[unit_2]))
        elif type == 'temp':
            units = (choice(self.TEMPERATURE[unit_1]), choice(self.TEMPERATURE[unit_2]))
        elif type == 'mass':
            units = (choice(self.MASS[unit_1]), choice(self.MASS[unit_2]))
        else:
            pass
        return units
    
    def write_data(self, data):
        with open('data.jsonl', 'a') as file:
            file.write(json.dumps(data))
            file.write('\n')
    
    def build(self, n=1): #n is the number of lines or examples to generate
        for _ in range(n):
            rand = randint(1, 3)
            if rand == 1:
                type = 'dist'
            elif rand == 2:
                type = 'temp'
            else:
                type = 'mass'
            bounds = 'high' if randint(0, 1) == 0 else 'low'
            self.generate_data(type, bounds)

d = DataGenerator()
d.build(242)
