scoreboard players reset @a player_deaths
scoreboard objectives add player_deaths deathCount "Deaths"

data remove storage manhunt:hunted-position PosX
data remove storage manhunt:hunted-position PosY
data remove storage manhunt:hunted-position PosZ

scoreboard objectives add compass-slot dummy "Compass Slot"
scoreboard objectives add has-compass dummy "Has Compass"

scoreboard objectives add manhunt dummy "Data"
scoreboard objectives setdisplay sidebar manhunt

# Reset worldborder
worldborder set 1000000

scoreboard players set Ongoing manhunt 1
scoreboard players set RevealTimer manhunt 180
scoreboard players set Hours manhunt 0
scoreboard players set Minutes manhunt 0
scoreboard players set Seconds manhunt 0