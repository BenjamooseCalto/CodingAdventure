import requests
import json
import os

from dotenv import load_dotenv
from time import sleep

load_dotenv()
API_KEY = os.getenv("RIOT_API_KEY")
API_URL = "na1.api.riotgames.com"
LIVEGAMEDATA_URL = "https://127.0.0.1:2999/liveclientdata"  # /allgamedata /activeplayer /activeplayername /activeplayerabilities
ENDPOINT = "/allgamedata"
DIR = os.path.dirname(__file__)
DATA_DIR = os.path.join(DIR, "data")
CERT = os.path.join(DIR, "riotgames.pem")
DATA_FILE = os.path.join(DATA_DIR, "data.json")

# the end goal for this is to be able to build a dataset to be used with AI that can (attempt) to predict whether you will win or lose a game while it is in progress
# this is probably the WRONG way to do all this, but I haven't figured out the better way yet.


class ClientData:
    def __init__(self, **kwargs):
        self.data_file = None
        if kwargs:
            self.api_key = kwargs["api_key"]
            self.api_url = kwargs["api_url"]
            self.endpoint = kwargs["endpoint"]
            self.verify = kwargs["verify"]
            self.data_file = kwargs["data_file"]
            if kwargs["timeout"]:
                self.timeout = kwargs["timeout"]
            else:
                self.timeout = 5

    def get_data(self, update=True):
        if update == True:
            try:
                r = requests.get(
                    f"{self.api_url}{self.endpoint}",
                    verify=self.verify,
                    timeout=self.timeout,
                )
            except (requests.ConnectionError, requests.Timeout) as exception:
                print(exception)
                r = False
            finally:
                if r:
                    self.r = r.json()
                    self.dump_json()
                    return True
                else:
                    return False
        else:
            with open(DATA_FILE, "r") as file:
                self.r = json.load(file)

    def dump_json(self):
        if self.data_file:
            with open(self.data_file, "a") as file:
                json.dump(self.r, file, indent=4)
        else:
            with open(DATA_FILE, "a") as file:
                json.dump(self.r, file, indent=4)
        self.data = self.r

    def run(self, mode=None, update=True):
        if mode == "debug":
            if self.get_data(update) == False:
                print("Connection Lost")
            else:
                self.index()
        elif mode == "loop":
            while True:
                if self.get_data(update) == False:
                    print("Connection Lost")
                    break
                else:
                    self.index()
                sleep(2)
        elif mode == int:
            i = 0
            while True:
                if self.get_data(update) == False:
                    print("Connection Lost")
                    break
                else:
                    i += 1
                    self.index()
                    if i == mode:
                        break
                sleep(2)

    def index(self):
        self.activePlayer = ActivePlayer(self.r["activePlayer"])
        self.gameData = GameData(self.r["gameData"])
        self.events = Events(self.r["events"])
        self.allPlayers = []

        for player in self.r["allPlayers"]:
            self.allPlayers.append(RemotePlayer(player))

    def clear(self):
        with open(DATA_FILE, "w") as file:
            file.write("")
        print("Data file cleared")

    def dump(self, target):
        target = os.path.join(DATA_DIR, target)
        with open(target, "w") as file:
            json.dump(self.r, file, indent=4)
        print(f"Data successfully dumped to {target}")


class ActivePlayer:
    def __init__(self, player):
        self.player = player
        self.abilities = self.player["abilities"]
        self.championStats = self.player["championStats"]
        self.currentGold = self.player["currentGold"]
        self.fullRunes = self.player["fullRunes"]
        self.level = self.player["level"]
        self.summonerName = self.player["summonerName"]
        self.passive = Ability(self.abilities["Passive"], "passive")
        self.q = Ability(self.abilities["Q"], "q")
        self.w = Ability(self.abilities["W"], "w")
        self.e = Ability(self.abilities["E"], "e")
        self.r = Ability(self.abilities["R"], "r")
        self.runes = PlayerRunes(self.fullRunes)


class Ability:
    def __init__(self, ability, slot):
        self.ability = ability
        self.slot = slot
        if self.slot != "passive":
            self.abilityLevel = self.ability["abilityLevel"]
        self.displayName = self.ability["displayName"]
        self.id = self.ability["id"]
        self.rawDescription = self.ability["rawDescription"]
        self.rawDisplayName = self.ability["rawDisplayName"]

    def __str__(self):
        if self.slot == "passive":
            return f"[PASSIVE] {self.displayName}"
        elif self.slot == "q":
            return f"[Q] {self.displayName}[{self.abilityLevel}]"
        elif self.slot == "w":
            return f"[W] {self.displayName}[{self.abilityLevel}]"
        elif self.slot == "e":
            return f"[E] {self.displayName}[{self.abilityLevel}]"
        elif self.slot == "r":
            return f"[R] {self.displayName}[{self.abilityLevel}]"


class PlayerRunes:
    def __init__(self, runes):
        self.generalRunes = runes["generalRunes"]
        self.rune_0 = PlayerSubRune(self.generalRunes[0])
        self.rune_1 = PlayerSubRune(self.generalRunes[1])
        self.rune_2 = PlayerSubRune(self.generalRunes[2])
        self.rune_3 = PlayerSubRune(self.generalRunes[3])
        self.rune_4 = PlayerSubRune(self.generalRunes[4])
        self.rune_5 = PlayerSubRune(self.generalRunes[5])

        self.keystone = runes["keystone"]
        self.primaryRuneTree = runes["primaryRuneTree"]
        self.secondaryRuneTree = runes["secondaryRuneTree"]
        self.statRunes = runes["statRunes"]


class PlayerSubRune:
    def __init__(self, rune):
        self.rune = rune
        self.displayName = self.rune["displayName"]
        self.id = self.rune["id"]
        self.rawDescription = self.rune["rawDescription"]
        self.rawDisplayName = self.rune["rawDisplayName"]


class RemotePlayer:
    def __init__(self, player):
        self.player = player
        self.championName = player["championName"]
        self.isBot = player["isBot"]
        self.isDead = player["isDead"]
        self.items = player["items"]
        self.level = player["level"]
        self.position = player["position"]
        self.respawnTimer = player["respawnTimer"]
        self.runes = player["runes"]
        self.scores = Scores(player["scores"])
        self.skinID = player["skinID"]
        self.skinName = player["skinName"]
        self.summonerName = player["summonerName"]
        self.summonerSpells = SummonerSpells(player["summonerSpells"])
        self.team = player["team"]
        self.inventory = []

        for item in self.items:
            self.inventory.append(Item(item))

    def __str__(self):
        return f"NAME: {self.summonerName}"


class RemoteRunes:
    def __init__(self, runes):
        self.keystone = runes["keystone"]
        self.primaryRuneTree = runes["primaryRuneTree"]
        self.secondaryRuneTree = runes["secondaryRuneTree"]


class Scores:
    def __init__(self, scores):
        self.assists = scores["assists"]
        self.creepScore = scores["creepScore"]
        self.deaths = scores["deaths"]
        self.kills = scores["kills"]
        self.wardScore = scores["wardScore"]


class SummonerSpells:
    def __init__(self, spells):
        self.summonerSpellOne = spells["summonerSpellOne"]["displayName"]
        self.summonerSpellTwo = spells["summonerSpellTwo"]["displayName"]


class Item:
    def __init__(self, item):
        self.canUse = item["canUse"]
        self.consumable = item["consumable"]
        self.count = item["count"]
        self.displayName = item["displayName"]
        self.itemID = item["itemID"]
        self.price = item["price"]
        self.rawDescription = item["rawDescription"]
        self.rawDisplayName = item["rawDisplayName"]
        self.slot = item["slot"]

    def __str__(self):
        return self.displayName


class Events:
    def __init__(self, events):
        self.allEvents = []
        for event in events["Events"]:
            self.allEvents.append(event)


class GameEvent:
    def __init__(self, event):
        self.eventID = event["EventID"]
        self.eventName = event["EventName"]
        self.eventTime = event["EventTime"]

    def __str__(self):
        return f"EVENT: {self.eventName}\nTIME: {self.eventTime}"


class GameData:
    def __init__(self, gamedata):
        self.gameMode = gamedata["gameMode"]
        self.gameTime = gamedata["gameTime"]
        self.mapName = gamedata["mapName"]
        self.mapNumber = gamedata["mapNumber"]
        self.mapTerrain = gamedata["mapTerrain"]


class Game:
    def __init__(self, clientData):
        self.gameData = clientData.gameData
        self.events = clientData.events
        self.allPlayers = clientData.allPlayers
        self.activePlayer = clientData.activePlayer

        self.__build_teams()
        self.__find_active()

    def __find_active(self):  # always call this last when building the game
        for player in self.allPlayers:
            if player.summonerName == self.activePlayer.summonerName:
                self.owner = self.allPlayers.pop(self.allPlayers.index(player))

    def __build_teams(self):
        self.order = []
        self.chaos = []
        for player in self.allPlayers:
            if player.team == "ORDER":
                self.order.append(player.summonerName)
            elif player.team == "CHAOS":
                self.chaos.append(player.summonerName)

        self.teams = {"ORDER": self.order, "CHAOS": self.chaos}

    def display(self):
        blue_str = f"BLUE TEAM:"
        for player in self.teams["ORDER"]:
            blue_str = blue_str + f" {player}"

        red_str = f"RED TEAM:"
        for player in self.teams["CHAOS"]:
            red_str = red_str + f" {player}"

        output = blue_str + "\n" + red_str
        return output


if __name__ == "__main__":
    api = ClientData(
        api_key=API_KEY,
        api_url=LIVEGAMEDATA_URL,
        endpoint=ENDPOINT,
        verify=CERT,
        timeout=7,
        data_file="aramTest.json",
    )
    api.run(mode="debug", update=False)
    # api.dump("aramTest.json")
    game = Game(api)
    print(game.teams)
