tag @s remove role-trapper
tag @s remove role-phalanx


scoreboard objectives add role-tracker dummy
execute as @s store success score @s role-tracker run tag @s remove role-tracker


title @s[scores={role-tracker=1}] title [{"text":"You are no longer "}, {"text":"Tracker","color":"#AA0000","bold":true}]

title @s[scores={role-tracker=0}] title [{"text":"You are now "}, {"text":"Tracker","color":"#AA0000","bold":true}]
tag @s[scores={role-tracker=0}] add role-tracker


scoreboard objectives remove role-tracker