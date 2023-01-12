function manhunt:setup

function manhunt:reset



team join hunted @r
team join hunters @a[team=!hunted]


spreadplayers 0 0 50 5000 true @a
execute at @r run setworldspawn ~ ~ ~
execute at @s run worldborder center ~ ~
time set day
weather clear
worldborder set 200 40

gamemode survival @a


# Finished teleporting players


bossbar set reveal-timer visible true

playsound entity.ender_dragon.growl ambient @a

# title at times 20 20 20
# title @a title [{"text":"[","color":"dark_red","bold":true},{"text":"C'est parti !","color":"red","bold":true},{"text":"]","color":"dark_red","bold":true},{"text":" Le jeu commence!","color":"dark_red","bold":true}]


# Setup and Inventory

effect clear @a
effect give @a saturation 10 255 true
effect give @a minecraft:regeneration 10 255 true


clear @a 
item replace entity @a[team=hunters] hotbar.8 with compass{display: {Name: '{"text": "Hunter Compass", "italic": false}'}, LodestoneDimension: "minecraft:overworld", LodestoneTracked: 0b}



# Classes-specific setup
execute as @a[team=hunters, tag=class-trapper] run function manhunt:roles/trapper/start
execute as @a[team=hunters, tag=class-tracker] run function manhunt:roles/tracker/start