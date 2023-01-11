team join hunters @a[team=]

execute if score Ongoing manhunt matches 1 run function manhunt:timer-tick


execute if entity @a[team=hunted, scores={player_deaths=1..}] run function manhunt:check-win


bossbar set reveal-timer players @a
bossbar set reveal-timer name [{"text":"Temps Écoulé: "}, {"score": {"name":"Hours", "objective":"manhunt"}}, {"text":"h"}, {"score": {"name":"Minutes", "objective":"manhunt"}}, {"text":"m"}, {"score": {"name":"Seconds", "objective":"manhunt"}}, {"text":"s"}]
execute store result bossbar reveal-timer value run scoreboard players get RevealTimer manhunt


# execute if score Ongoing manhunt matches 0 run bossbar 
execute as @a[nbt={SelectedItem:{id:"minecraft:netherite_sword"}}] run effect give @s minecraft:weakness 1 3 true
execute as @a if entity @s[nbt={SelectedItem:{id:"minecraft:shield"}}] run effect give @s minecraft:slowness 1 3 true
execute as @a if entity @s[nbt={Inventory:[{Slot:-106b, id:"minecraft:shield"}]}] run effect give @s minecraft:slowness 1 3 true

execute at @a[scores={player_damage=1..}] run particle minecraft:damage_indicator ~ ~ ~ 0 0 0 1 15 force
execute if entity @a[scores={player_damage=1..}] run scoreboard players reset @a player_damage
execute as @a[team=hunters, scores={manhunt-roles=1}] run function manhunt:trapper
execute as @a[team=hunters, scores={manhunt-roles=2}] run function manhunt:tracker
