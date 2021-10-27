# dnd something? idk
import os
import json

DIR = os.path.dirname(__file__)
CHARACTER_DIR = os.path.join(DIR, "characters")
RACES_DIR = os.path.join(DIR, "races")

class Character:
    def __init__(self, name):
        self.name = name

        self.mutable_attributes = {"strength": 10, "charisma": 10, "wisdom": 10, "dexterity": 10, "constitution": 10, "intelligence": 10, "perception": 10}
        self.health = {"hp": 0, "armor": 0}
        self.modifiers = {"strength_mod": 0, "charisma_mod": 0, "wisdom_mod": 0, "dexterity_mod": 0, "constitution_mod": 0, "intelligence_mod": 0, "perception_mod": 0}

        self.character_path = os.path.join(CHARACTER_DIR, self.name + ".json")

        self.units = {"singular": "lb", "plural": "lbs"}

        self.race = None

        self.inventory = Inventory(self)

        self.character_dict = {
            "name": self.name,
            "mutable_attributes": self.mutable_attributes,
            "health": self.health,
            "modifiers": self.modifiers,
            "inventory": self.inventory.export_inventory(),
            "race": self.race,
            "units": self.units
        }
    def set_name(self, name):
        self.name = name
    
    def set_hp(self, type, value, mode="set"):
        if mode == "set":
            self.health[type] = value
        elif mode == "add":
            self.health[type] += value
        elif mode == "subtract":
            self.health[type] -= value
    
    def set_attribute(self, attribute, value, mode="set"):
        if mode == "set":
            self.mutable_attributes[attribute] = value
        elif mode == "add":
            self.mutable_attributes[attribute] += value
        elif mode == "subtract":
            self.mutable_attributes[attribute] -= value
    
    def set_modifier(self, attribute, value, mode="set"):
        if mode == "set":
            self.modifiers[attribute] = value
        elif mode == "add":
            self.modifiers[attribute] += value
        elif mode == "subtract":
            self.modifiers[attribute] -= value

    def set_units(self, unit):
        acceptable_units = ["imp", "met"]
        if unit in acceptable_units:
            self.units = unit
        else:
            print("Invalid Unit")
        self.units = {"singular": "lb", "plural": "lbs"} if self.units == "imp" else {"singular": "kg", "plural": "kgs"}

    def get_attribute(self, attribute):
        return self.mutable_attributes[attribute]

    def get_modifier(self, attribute):
        return self.modifiers[attribute]

    def get_health(self, type):
        return self.health[type]

    def get_name(self):
        return self.name
    
    def export_character(self):
        with open(self.character_path, 'w') as file:
            json.dump(self.character_dict, file, indent=4)
        return self.character_dict

class Body:
    def __init__(self, character):
        self.character = character
        self.units = self.character.units

class Race:
    def __init__(self, name):
        self.name = name
        self.race_path = os.path.join(RACES_DIR, self.name + ".json")

        self.characteristics = {}
        self.attribute_modifiers = {}

        self.race_dict = {
            "name": self.name,
            "characteristics": self.characteristics,
            "attribute_modifiers": self.attribute_modifiers
        }
    
    def __repr__(self):
        return f"{self.name}"

    def add_characteristic(self, key, value):
        self.characteristics[key] = value
    
    def add_characteristics_from_dict(self, dict:dict):
        for key, value in dict.items():
            self.add_characteristic(key, value)

    def add_attribute_modifier(self, attribute, value):
        self.attribute_modifiers[attribute] = value
    
    def add_attribute_modifiers_from_dict(self, dict:dict):
        for key, value in dict.items():
            self.add_attribute_modifier(key, value)

    def validate_attributes(self):
        valid_attributes = ["strength", "charisma", "wisdom", "dexterity", "constitution", "intelligence", "perception"]
        if not all(attribute in valid_attributes for attribute in self.characteristics.keys()):
            print("Invalid Attributes")

    def export_race(self):
        with open(self.race_path, "w") as file:
            json.dump(self.race_dict, file, indent=4)
        print(self.race_dict)

class Inventory:
    def __init__(self, character):
        self.max_size = 10
        self.max_weight = 50

        self.attribute_weights = {"strength": 2, "charisma": 0, "wisdom": 0.03, "dexterity": 1, "constitution": 0, "intelligence": 0.05, "perception": 0}
        self.attributes = character.mutable_attributes

        self.calculate_max_size()
        self.calculate_max_weight()

        self.units = character.units

        self.items = []

    def __str__(self):
        return f"Inventory of size {self.max_size} containing {self.items} | Max carry weight: {self.max_weight}{self.units['plural']}"

    def __repr__(self):
        return f"Inventory[{self.max_size}] [{self.max_weight}]"

    def calculate_max_size(self):
        for attribute in self.attributes:
            x = (self.attribute_weights[attribute] * self.attributes[attribute])
            self.max_size += x
            self.max_size = int(self.max_size)
    
    def calculate_max_weight(self):
        for attribute in self.attributes:
            x = (self.attribute_weights[attribute] * self.attributes[attribute])
            self.max_weight += x
    
    def add_item(self, item):
        if item not in self.items:
            self.items.append(item.__dict__)
        else:
            pass

    def export_inventory(self):
        return {"max_size": self.max_size, "max_weight": self.max_weight, "items": self.items}

class Item:
    def __init__(self, name, weight):
        self.name = name
        self.weight = weight
        self.properties = {"test property": "test value"}
        self.weight_unit = "lbs" if self.weight > 1 else "lb"

    def __str__(self):
        return f"{self.name} | {self.weight}{self.weight_unit} | {self.properties}"

    def __repr__(self):
        return f"{self.name} | {self.weight}{self.weight_unit}"

    def export_item(self):
        return self.__dict__


fox = Race("testRace")
char = {"tail": "test tail", "ears": "test ears"}
attr = {"dexterity": 1.5}
fox.add_characteristics_from_dict(char)
fox.add_attribute_modifiers_from_dict(attr)
print(fox.export_race())

