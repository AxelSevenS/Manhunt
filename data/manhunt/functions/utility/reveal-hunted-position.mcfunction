execute store result storage manhunt:hunted-position PosX int 1 run data get entity @a[team=hunted, limit=1] Pos[0]
execute store result storage manhunt:hunted-position PosY int 1 run data get entity @a[team=hunted, limit=1] Pos[1]
execute store result storage manhunt:hunted-position PosZ int 1 run data get entity @a[team=hunted, limit=1] Pos[2]
playsound entity.experience_orb.pickup master @a[team=hunters] ~ ~ ~ 0.01 1
title @a times 30 15 30
title @a actionbar {"text":"Hunted Position Revealed","color":"dark_red","bold":true}

summon minecraft:cow ~ ~ ~ {Tags:["hunted"]}
summon minecraft:cow ~ ~ ~ {Tags:["hunted"]}
give @a[nbt={tag:{Tags:["hunted"]}}] minecraft:iron_sword 
