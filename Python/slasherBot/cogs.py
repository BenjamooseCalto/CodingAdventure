# cogs for discord bot, currently working on this, it is not anywhere close to being finished, and doesn't actually work yet

import discord
import random

from discord.ext import commands
from discord_slash import cog_ext, SlashContext
from discord_slash.utils.manage_components import create_button, create_actionrow
from discord_slash.model import ButtonStyle


class Casino(commands.cog):
    def __init__(self, bot):
        self.bot = bot

    @cog_ext.cog_slash(name="flipit")
    async def slashFlip(ctx: SlashContext, bet):
        flip = random.randint(0, 1)
        side = "heads" if flip == 0 else "tails"
        outcome = "won!" if side == bet else "lost!"
        print(f"The coin lands on {side}. You {outcome}")

    @cog_ext.cog_slash(name="bigtest")
    async def bigtest(ctx: SlashContext):
        buttons = [
            create_button(style=ButtonStyle.green, label="A green button"),
            create_button(style=ButtonStyle.blue, label="A blue button"),
        ]
        action_row = create_actionrow(*buttons)

        await ctx.send(components=[action_row])


def setup(bot):
    bot.add_cog(Casino(bot))
