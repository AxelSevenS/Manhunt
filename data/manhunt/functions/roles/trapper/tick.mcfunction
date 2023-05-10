
execute as @a[tag=role-trapper, team=hunters, limit=1, sort=random] at @s as @e[type=item, nbt={Item: {id: "minecraft:stick", Count: 4b}}, distance=..10] at @s as @e[type=item, nbt={Item: {id: "minecraft:wheat_seeds", Count: 1b}}, limit=1, sort=nearest, distance=..1] at @s run function manhunt:roles/trapper/traps/signal/craft
execute as @a[tag=role-trapper, team=hunters, limit=1, sort=random] at @s as @e[type=item, nbt={Item: {id: "minecraft:stick", Count: 4b}}, distance=..10] at @s as @e[type=item, nbt={Item: {id: "minecraft:cobblestone", Count: 2b}}, limit=1, sort=nearest, distance=..1] at @s run function manhunt:roles/trapper/traps/weakening/craft
execute as @a[tag=role-trapper, team=hunters, limit=1, sort=random] at @s as @e[type=item, nbt={Item: {id: "minecraft:stick", Count: 4b}}, distance=..10] at @s as @e[type=item, nbt={Item: {id: "minecraft:apple", Count: 1b}}, limit=1, sort=nearest, distance=..1] at @s run function manhunt:roles/trapper/traps/boost/craft

execute as @e[type=minecraft:armor_stand, tag=signal-trap, tag=!positioned] run function manhunt:roles/trapper/traps/signal/position
execute as @e[type=minecraft:armor_stand, tag=boost-trap] run function manhunt:roles/trapper/traps/boost/position

execute as @e[type=armor_stand, tag=signal-trap] at @s if entity @a[team=hunted, distance=..5] run function manhunt:roles/trapper/traps/signal/trigger
execute as @e[type=falling_block, tag=weakening-trap] at @s if entity @a[team=hunted, distance=..5] run function manhunt:roles/trapper/traps/weakening/trigger
execute as @e[type=item, tag=boost-trap] at @s if entity @a[team=hunted, distance=..10] run function manhunt:roles/trapper/traps/boost/trigger

