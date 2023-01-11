
scoreboard objectives add random dummy

summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid"]} 
execute store result score value random run data get entity @e[type=area_effect_cloud,tag=random_uuid,limit=1] UUID[0] 1
kill @e[type=area_effect_cloud,tag=random_uuid] 



# scoreboard objectives setdisplay sidebar random



# execute as @a[scores={hunted_player=..1}] run say gay