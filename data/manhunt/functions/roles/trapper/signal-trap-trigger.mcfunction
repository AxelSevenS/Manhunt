function manhunt:utility/reveal-hunted-position

effect give @a[team=hunted, sort=nearest, limit=1] minecraft:glowing 10 1
effect give @a[team=hunted, sort=nearest, limit=1] minecraft:slowness 10 1
effect give @a[team=hunted, sort=nearest, limit=1] minecraft:weakness 10 1
effect give @a[team=hunted, sort=nearest, limit=1] minecraft:blindness 10 1
 
kill
