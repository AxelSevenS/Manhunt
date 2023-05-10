team join hunters @a[team=]


execute if entity @a[team=hunted, scores={player_deaths=1..}] run function manhunt:end-game
execute unless entity @a[team=hunted] run function manhunt:end-game


bossbar set reveal-timer players @a
bossbar set reveal-timer name [{"text":"Temps Écoulé: "}, {"score": {"name":"Hours", "objective":"manhunt"}}, {"text":"h"}, {"score": {"name":"Minutes", "objective":"manhunt"}}, {"text":"m"}, {"score": {"name":"Seconds", "objective":"manhunt"}}, {"text":"s"}]
execute store result bossbar reveal-timer value run scoreboard players get RevealTimer manhunt


# execute as @a[nbt={SelectedItem:{id:"minecraft:netherite_sword"}}] run effect give @s minecraft:weakness 1 3 true
# execute as @a if entity @s[nbt={SelectedItem:{id:"minecraft:shield"}}] run effect give @s minecraft:slowness 1 3 true
# execute as @a if entity @s[nbt={Inventory:[{Slot:-106b, id:"minecraft:shield"}]}] run effect give @s minecraft:slowness 1 3 true

execute store success score #bool manhunt run execute if entity @a[scores={player_damage=1..}]
execute if score #bool manhunt matches 1 at @s run particle minecraft:damage_indicator ~ ~ ~ 0 0 0 1 15 force
execute if score #bool manhunt matches 1 run scoreboard players reset @s player_damage



# role-specific traits

execute as @a[tag=role-trapper, team=hunters] at @s run function manhunt:roles/trapper/tick
execute as @a[tag=role-tracker, team=hunters] at @s run function manhunt:roles/tracker/tick

# Timer Update
function manhunt:timer-tick

function manhunt:utility/update-compass
