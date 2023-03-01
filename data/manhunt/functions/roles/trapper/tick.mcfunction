# execute as @a[scores={placed-armor-stand=1..}] run function manhunt:roles/trapper/place-trap


execute as @a[tag=role-trapper, team=hunters, limit=1, sort=random] at @s as @e[type=item, nbt={Item: {id: "minecraft:stick", Count: 4b}}, distance=..10] at @s as @e[type=item, nbt={Item: {id: "minecraft:wheat_seeds", Count: 1b}}, limit=1, sort=nearest, distance=..1] at @s run function manhunt:roles/trapper/craft-signal-trap

execute as @e[type=armor_stand, tag=signal-trap] at @s if entity @a[team=hunted, distance=..5] run function manhunt:roles/trapper/signal-trap-trigger

