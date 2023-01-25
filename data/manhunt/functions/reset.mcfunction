scoreboard players reset @a player_deaths
scoreboard objectives add player_deaths deathCount "Deaths"

scoreboard objectives add compass-slot dummy "Compass Slot"

scoreboard objectives add manhunt dummy "Data"
scoreboard objectives setdisplay sidebar manhunt

scoreboard players set Ongoing manhunt 1
scoreboard players set RevealTimer manhunt 360
scoreboard players set Hours manhunt 0
scoreboard players set Minutes manhunt 0
scoreboard players set Seconds manhunt 0