tag @e[sort=nearest, limit=1, tag=!signal-trap, type=minecraft:armor_stand] add signal-trap
data merge entity @e[type=minecraft:armor_stand, tag=signal-trap, sort=nearest, limit=1] {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Small:1b,ArmorItems:[{},{},{},{id:"spore_blossom",Count:1b}],HandItems:[{},{}],DisabledSlots:4144959,Pose:{Head:[180f,0f,0f]}}
say hi
scoreboard players reset @a placed-trap