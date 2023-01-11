
team leave @a
team join hunted @r
team join hunters @a[team=!hunted]

worldborder set 59999968
title at times 20 20 20
title @a title [{"text":"[","color":"dark_red","bold":true},{"text":"C'est parti !","color":"red","bold":true},{"text":"]","color":"dark_red","bold":true},{"text":" Le jeu commence!","color":"dark_red","bold":true}]
spreadplayers 0 0 0 10 false @a
execute at @r run setworldspawn ~ ~ ~
execute at @s run worldborder center ~ ~
playsound ambient.cave ambient @a 
time set day
weather clear
effect give @a saturation 10 255 true
effect give @a minecraft:regeneration 10 255 true
worldborder set 200 40

gamemode survival @a

scoreboard objectives remove player_deaths
scoreboard objectives add player_deaths deathCount "Deaths"

scoreboard objectives remove manhunt
scoreboard objectives add manhunt dummy "Data"
scoreboard objectives setdisplay sidebar manhunt


scoreboard players set Ongoing manhunt 1
scoreboard players set RevealTimer manhunt 360
scoreboard players set Seconds manhunt 0
scoreboard players set Minutes manhunt 0
scoreboard players set Hours manhunt 0

scoreboard objectives add manhunt-roles dummy "Role"




bossbar remove reveal-timer
bossbar add reveal-timer [{"text":"Temps Écoulé: ","color":"red","style":"solid"}, {"score": {"name":"Hours", "objective":"manhunt"},"color":"red","style":"bold"}, {"text":"h","color":"red","style":"solid"}, {"score": {"name":"Minutes", "objective":"manhunt"},"color":"red","style":"bold"}, {"text":"m","color":"red","style":"solid"}, {"score": {"name":"Seconds", "objective":"manhunt"},"color":"red","style":"bold"}, {"text":"s","color":"red","style":"solid"}]
bossbar set reveal-timer max 360


