# This is my Discord bot, still WIP

In here you can find the source code for my Discord bot, I've called it SlasherBot for now, but that will likely change.
In the future this will also likely be moved to it's own repo once it gets bigger and is closer to being done. I don't have any plans to make this public unless for some reason it becomes useful.

bot.py is the base file for running the bot and connecting all of the modules to it.
Inside the modules folder is slasherUtils.py, this is where I keep all of my custom functions/classes for the bot. 

Below I'll explain each module.

## Starship API

### *API by @NoahPrail on Twitter and starshipstatus.space*

In modules > starship you'll find my newest addition, this script grabs (nearly) realtime data from Starbase, TX home to the SpaceX South Texas Launch Site.
The script makes an API call to an API made by @NoahPrail on Twitter, this returns a ton of information including Weather, Temporary Flight Restrictions, and road closures.
There is a huge community of people that cover all the happenings at Starbase. The road closures are a great indication of when things are happening, as they are closed when transporting the booster, ship, or even ground support equipment.

Once launches resume, hopefully in September, there will likely be more information regarding launches and general launch information. This will be awesome info to be able to play with.

Right now it returns the number of active TFRs, number of active road closures, current weather, and the time it was last updated.
I am working on a way to request information via my script to get specific information. For example this could be humidity, air pressure, TFR dates, road closure status, etc.

The data.txt file is just the API response if you're interested in the raw data.

## Future

Plans:
1. Add help command
2. Build mini-casino
3. Build a database of some sort
4. Integrate more cool APIs
