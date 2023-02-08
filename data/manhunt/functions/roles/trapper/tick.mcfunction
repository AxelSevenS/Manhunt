# execute as @a[scores={placed-armor-stand=1..}] run function manhunt:roles/trapper/place-trap


execute as @e[type=item, nbt={Item: {id: "minecraft:stick", Count: 3b}}] at @s as @e[type=item, nbt={Item: {id: "minecraft:iron_ingot", Count: 1b}}, limit=1, sort=nearest, distance=..1] as @e[type=item, nbt={Item: {id: "minecraft:wheat_seeds", Count: 1b}}, limit=1, sort=nearest, distance=..1] at @s run function manhunt:roles/trapper/craft-signal-trap

execute as @e[type=armor_stand, tag=signal-trap] at @s if entity @a[team=hunted, distance=..5] run function manhunt:roles/trapper/signal-trap-trigger

