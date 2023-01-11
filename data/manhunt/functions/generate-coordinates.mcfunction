scoreboard objectives remove coordinates
scoreboard objectives add coordinates dummy "Game Coordinates"

scoreboard players set range coordinates 50000

function manhunt:generate-random
execute store result score X coordinates run scoreboard players get value random
scoreboard players operation X coordinates %= range coordinates 

function manhunt:generate-random
execute store result score Z coordinates run scoreboard players get value random
scoreboard players operation Z coordinates %= range coordinates


scoreboard objectives setdisplay sidebar coordinates


# execute at @a run tp @s ~ ~ ~ X coordinates Z coordinates
