


# execute store result storage manhunt:hunted-position PosX int 1 run data get entity @a[team=hunted, limit=1] Pos[0]
# execute store result storage manhunt:hunted-position PosY int 1 run data get entity @a[team=hunted, limit=1] Pos[1]
# execute store result storage manhunt:hunted-position PosZ int 1 run data get entity @a[team=hunted, limit=1] Pos[2]

execute as @a[team=!hunters] store result score @s compass-slot run data get entity @s Inventory[{"id":"minecraft:compass"}].Slot

playsound entity.experience_orb.pickup master @a[team=!hunters] ~ ~ ~ 0.01 1
title @a times 30 15 30
title @a actionbar {"text":"Hunted Position Revealed","color":"dark_red","bold":true}

item modify entity @a[team=!hunters, scores={compass-slot=0}] hotbar.0 manhunt:follow_hunted
item modify entity @a[team=!hunters, scores={compass-slot=1}] hotbar.1 manhunt:follow_hunted
item modify entity @a[team=!hunters, scores={compass-slot=2}] hotbar.2 manhunt:follow_hunted
item modify entity @a[team=!hunters, scores={compass-slot=3}] hotbar.3 manhunt:follow_hunted
item modify entity @a[team=!hunters, scores={compass-slot=4}] hotbar.4 manhunt:follow_hunted
item modify entity @a[team=!hunters, scores={compass-slot=5}] hotbar.5 manhunt:follow_hunted
item modify entity @a[team=!hunters, scores={compass-slot=6}] hotbar.6 manhunt:follow_hunted
item modify entity @a[team=!hunters, scores={compass-slot=7}] hotbar.7 manhunt:follow_hunted
item modify entity @a[team=!hunters, scores={compass-slot=8}] hotbar.8 manhunt:follow_hunted
item modify entity @a[team=!hunters, scores={compass-slot=9}] inventory.0 manhunt:follow_hunted
item modify entity @a[team=!hunters, scores={compass-slot=10}] inventory.1 manhunt:follow_hunted
item modify entity @a[team=!hunters, scores={compass-slot=11}] inventory.2 manhunt:follow_hunted
item modify entity @a[team=!hunters, scores={compass-slot=12}] inventory.3 manhunt:follow_hunted
item modify entity @a[team=!hunters, scores={compass-slot=13}] inventory.4 manhunt:follow_hunted
item modify entity @a[team=!hunters, scores={compass-slot=14}] inventory.5 manhunt:follow_hunted
item modify entity @a[team=!hunters, scores={compass-slot=15}] inventory.6 manhunt:follow_hunted
item modify entity @a[team=!hunters, scores={compass-slot=16}] inventory.7 manhunt:follow_hunted
item modify entity @a[team=!hunters, scores={compass-slot=17}] inventory.8 manhunt:follow_hunted
item modify entity @a[team=!hunters, scores={compass-slot=18}] inventory.9 manhunt:follow_hunted
item modify entity @a[team=!hunters, scores={compass-slot=19}] inventory.10 manhunt:follow_hunted
item modify entity @a[team=!hunters, scores={compass-slot=20}] inventory.11 manhunt:follow_hunted
item modify entity @a[team=!hunters, scores={compass-slot=21}] inventory.12 manhunt:follow_hunted
item modify entity @a[team=!hunters, scores={compass-slot=22}] inventory.13 manhunt:follow_hunted
item modify entity @a[team=!hunters, scores={compass-slot=23}] inventory.14 manhunt:follow_hunted
item modify entity @a[team=!hunters, scores={compass-slot=24}] inventory.15 manhunt:follow_hunted
item modify entity @a[team=!hunters, scores={compass-slot=25}] inventory.16 manhunt:follow_hunted
item modify entity @a[team=!hunters, scores={compass-slot=26}] inventory.17 manhunt:follow_hunted
item modify entity @a[team=!hunters, scores={compass-slot=27}] inventory.18 manhunt:follow_hunted
item modify entity @a[team=!hunters, scores={compass-slot=28}] inventory.19 manhunt:follow_hunted
item modify entity @a[team=!hunters, scores={compass-slot=29}] inventory.20 manhunt:follow_hunted
item modify entity @a[team=!hunters, scores={compass-slot=30}] inventory.21 manhunt:follow_hunted
item modify entity @a[team=!hunters, scores={compass-slot=31}] inventory.22 manhunt:follow_hunted
item modify entity @a[team=!hunters, scores={compass-slot=32}] inventory.23 manhunt:follow_hunted
item modify entity @a[team=!hunters, scores={compass-slot=33}] inventory.24 manhunt:follow_hunted
item modify entity @a[team=!hunters, scores={compass-slot=34}] inventory.25 manhunt:follow_hunted
item modify entity @a[team=!hunters, scores={compass-slot=35}] inventory.26 manhunt:follow_hunted
item modify entity @a[team=!hunters, scores={compass-slot=-106}] weapon.offhand manhunt:follow_hunted