
execute if score Ongoing manhunt matches 1 run tellraw @a [{"text":"Temps actuel : "}, {"score": {"name": "Hours", "objective":"manhunt"}}, {"text":"h"}, {"score": {"name": "Minutes", "objective":"manhunt"}}, {"text":"m"}, {"score": {"name": "Seconds", "objective":"manhunt"}}, {"text":"s"}]


# calculate the total time in seconds using 
execute if score Ongoing manhunt matches 1 run scoreboard players set #TotalHourSeconds manhunt 3600
execute if score Ongoing manhunt matches 1 run scoreboard players operation #TotalHourSeconds manhunt *= Hours manhunt

execute if score Ongoing manhunt matches 1 run scoreboard players set #TotalMinuteSeconds manhunt 60
execute if score Ongoing manhunt matches 1 run scoreboard players operation #TotalMinuteSeconds manhunt *= Minutes manhunt

execute if score Ongoing manhunt matches 1 run scoreboard players operation #TotalSeconds manhunt = Seconds manhunt
execute if score Ongoing manhunt matches 1 run scoreboard players operation #TotalSeconds manhunt += #TotalMinuteSeconds manhunt
execute if score Ongoing manhunt matches 1 run scoreboard players operation #TotalSeconds manhunt += #TotalHourSeconds manhunt


# Check if this game's time was better than the Current best Time 
execute if score Ongoing manhunt matches 1 store result score #CurrentTime manhunt run data get storage manhunt:record-game Time
execute if score Ongoing manhunt matches 1 store success score #bool manhunt run scoreboard players operation #CurrentTime manhunt < #TotalSeconds manhunt
# If yes, replace the Old Best Time
execute if score Ongoing manhunt matches 1 if score #bool manhunt matches 1 store result storage manhunt:record-game Time int 1 run scoreboard players get #TotalSeconds manhunt
execute if score Ongoing manhunt matches 1 if score #bool manhunt matches 1 run tellraw @a {"text": "Nouveau Record!"}


bossbar remove reveal-timer

scoreboard players reset #CurrentTime manhunt
scoreboard players reset #TotalHourSeconds manhunt
scoreboard players reset #TotalMinuteSeconds manhunt
scoreboard players reset #TotalSeconds manhunt

team leave @a

scoreboard objectives remove compass-slot
scoreboard objectives remove has-compass
scoreboard objectives remove trident-cooldown


scoreboard players set Ongoing manhunt 0
scoreboard players set RevealTimer manhunt 0
scoreboard players set Timer manhunt 0
scoreboard players set Seconds manhunt 0
scoreboard players set Minutes manhunt 0
scoreboard players set Hours manhunt 0

worldborder set 59999968
worldborder center 0 0

data remove storage manhunt:hunted-position PosX
data remove storage manhunt:hunted-position PosY
data remove storage manhunt:hunted-position PosZ
