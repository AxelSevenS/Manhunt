loot spawn ~ ~ ~ loot manhunt:signal-trap
kill @e[type=item,nbt={Item:{id:"minecraft:stick",Count:4b}},sort=nearest,limit=1]
# kill @e[type=item,nbt={Item:{id:"minecraft:wheat_seeds",Count:1b}},sort=nearest,limit=1]

playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 0.3 2
particle instant_effect ~ ~.5 ~ 0 0 0 0.002 15 normal
playsound minecraft:block.wood.break master @a ~ ~ ~
particle cloud ~ ~.5 ~ 0 0 0 0.04 10 normal

kill @s