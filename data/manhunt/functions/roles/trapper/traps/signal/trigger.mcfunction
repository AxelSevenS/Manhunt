function manhunt:utility/reveal-hunted-position

effect give @a[team=hunted, sort=nearest, limit=1] minecraft:glowing 20 1
effect give @a[team=hunted, sort=nearest, limit=1] minecraft:blindness 2 1
 
kill
