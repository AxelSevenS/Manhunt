

scoreboard objectives add player_health health {"text": "♡", "color": "red"}
scoreboard objectives setdisplay belowName player_health

scoreboard objectives add player_damage minecraft.custom:minecraft.damage_taken "Damage Taken"

team leave @a
scoreboard players set Ongoing manhunt 0

team add hunted "Chassés"
team modify hunted color blue
team modify hunted friendlyFire false
team modify hunted seeFriendlyInvisibles true

team add hunters "Chasseurs"
team modify hunters color red
team modify hunters friendlyFire false
team modify hunters seeFriendlyInvisibles true

team add spectators "Spectateurs"

execute at @a run particle minecraft:angry_villager ~ ~ ~ 1 1 1 1 10 force 
title @a title {"text":"Bienvenue","color":"blue","bold":true}
title @a subtitle {"text":"Au minijeu manhunt","color":"blue","bold":true}
tellraw @a { "text":"Done Loading!", "color":"white", "bold": true}
tellraw @a {"text": "Commencer ?","color": "blue","bold": true}
tellraw @a {"text": "Cliquer pour commencer","color": "blue","underlined": true, "clickEvent":{"action":"run_command","value":"/function manhunt:start-manhunt"}}

