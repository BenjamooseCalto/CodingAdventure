# This is my Discord bot, still WIP

In here you can find the source code for my Discord bot, I've called it SlasherBot for now, but that will likely change.
In the future this will also likely be moved to it's own repo once it gets bigger and is closer to being publicly available.

bot.py is the base file for running the bot and connecting all of the modules to it.
Inside the modules folder is slasherUtils.py, this is where I keep all of my custom functions/classes for the bot.

## Starship API

### *API by @NoahPrail on Twitter*

In modules > starship you'll find my newest addition, this script grabs (nearly) realtime data from Starbase, TX home to the SpaceX South Texas Launch Site.
The script makes an API call to an API made by @NoahPrail on Twitter, this returns a ton of information including Weather, Temporary Flight Restrictions, and road closures.
There is a huge community of people that cover all the happenings at Starbase. The road closures are a great indication of when things are happening, as they are closed when transporting the booster, ship, or even ground support equipment.

Once launches resume, hopefully in September, there will likely be more information added to the API regarding launches and general launch information. This will be awesome info to be able to play with.

Right now it returns the number of active TFRs, number of active road closures, current weather, and the time it was last updated.
I am working on a way to request information via my script to get specific information. For example this could be humidity, air pressure, TFR dates, road closure status, etc.

## Future

I got a lot of things I want to do with this bot, but if you have any ideas, please let me know! On my profile you can find my E-mail address and Twitter.
