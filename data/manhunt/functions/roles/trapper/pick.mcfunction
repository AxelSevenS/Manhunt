tag @s remove role-tracker
tag @s remove role-phalanx


scoreboard objectives add role-trapper dummy
execute as @s store success score @s role-trapper run tag @s remove role-trapper


title @s[scores={role-trapper=1}] title [{"text":"You are no longer "}, {"text":"Trapper","color":"#B700BD","bold":true}]

title @s[scores={role-trapper=0}] title [{"text":"You are now "}, {"text":"Trapper","color":"#B700BD","bold":true}]
tag @s[scores={role-trapper=0}] add role-trapper


scoreboard objectives remove role-trapper