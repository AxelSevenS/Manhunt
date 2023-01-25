execute as @a[scores={placed-trap=1..}] run function manhunt:roles/trapper/place-trap

execute as @e[type=armor_stand, tag=signal-trap] at @s if entity @a[team=hunted, distance=..5] run function manhunt:roles/trapper/signal-trap-trigger