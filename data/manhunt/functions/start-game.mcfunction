function manhunt:setup

function manhunt:reset

team leave @a

team join hunted @r
team join hunters @a[team=!hunted]

spreadplayers 0 0 0 5000 false @a[team=hunted, limit=1]
execute at @a[team=hunted, limit=1] run setworldspawn ~ ~ ~
execute at @a[team=hunted, limit=1] run worldborder center ~ ~
tp @a @a[team=hunted, limit=1]
time set day
weather clear
worldborder set 200 15

gamemode survival @a


# Finished teleporting players



bossbar add reveal-timer [{"text":"Temps Écoulé: ","color":"red","style":"solid"}, {"score": {"name":"Hours", "objective":"manhunt"},"color":"red","style":"bold"}, {"text":"h","color":"red","style":"solid"}, {"score": {"name":"Minutes", "objective":"manhunt"},"color":"red","style":"bold"}, {"text":"m","color":"red","style":"solid"}, {"score": {"name":"Seconds", "objective":"manhunt"},"color":"red","style":"bold"}, {"text":"s","color":"red","style":"solid"}]
bossbar set reveal-timer max 180
bossbar set reveal-timer visible true

playsound entity.ender_dragon.growl ambient @a

# title at times 20 20 20
# title @a title [{"text":"[","color":"dark_red","bold":true},{"text":"C'est parti !","color":"red","bold":true},{"text":"]","color":"dark_red","bold":true},{"text":" Le jeu commence!","color":"dark_red","bold":true}]


# Setup and Inventory

clear @a

item replace entity @a[team=hunters] hotbar.8 with compass{display: {Name: '{"text": "Hunter Compass", "italic": false}'}, LodestoneDimension: "minecraft:overworld", LodestoneTracked: 0b}

advancement revoke @a everything

effect clear @a
effect give @a saturation 20 1 true
effect give @a minecraft:regeneration 25 255 true
effect give @a[team=hunted] minecraft:invisibility 25 255 true
effect give @a[team=hunted] minecraft:haste 30 1 true
effect give @a[team=hunted] minecraft:speed 15 3 true
effect give @a[team=hunters] minecraft:slowness 25 255 true
effect give @a[team=hunters] minecraft:jump_boost 25 128 true
effect give @a[team=hunters] minecraft:blindness 25 255 true

effect give @a minecraft:weakness 20 255 true
# summon minecraft:cow ~ ~ ~ {["team=hunters, limit=1"]}
summon minecraft:cow ~ ~ ~ {Tags:["hunter"]}
summon minecraft:cow ~ ~ ~ {Tags:["hunter"]}
summon minecraft:cow ~ ~ ~ {Tags:["hunter"]}
summon minecraft:cow ~ ~ ~ {Tags:["hunter"]} 

# scoreboard objectives add placed-armor-stand minecraft.used:minecraft.armor_stand "Placed Armor Stands"


# Classes-specific setup
execute as @a[team=hunters, tag=class-trapper] run function manhunt:roles/trapper/start
execute as @a[team=hunters, tag=class-tracker] run function manhunt:roles/tracker/start