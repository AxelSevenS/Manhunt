scoreboard objectives add player_health health {"text": "♡", "color": "red"}
# scoreboard objectives add player_health health "Health"
scoreboard objectives modify player_health rendertype hearts
scoreboard objectives setdisplay belowName player_health

scoreboard objectives add player_damage minecraft.custom:minecraft.damage_taken "Damage Taken"

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
team modify spectators color gray

bossbar add reveal-timer [{"text":"Temps Écoulé: ","color":"red","style":"solid"}, {"score": {"name":"Hours", "objective":"manhunt"},"color":"red","style":"bold"}, {"text":"h","color":"red","style":"solid"}, {"score": {"name":"Minutes", "objective":"manhunt"},"color":"red","style":"bold"}, {"text":"m","color":"red","style":"solid"}, {"score": {"name":"Seconds", "objective":"manhunt"},"color":"red","style":"bold"}, {"text":"s","color":"red","style":"solid"}]
bossbar set reveal-timer max 360
bossbar set reveal-timer visible false


# tellraw @a {"text": "Commencer ?","color": "blue","bold": true}
# tellraw @a {"text": "Cliquer pour commencer","color": "blue","underlined": true, "clickEvent":{"action":"run_command","value":"/function manhunt:start-game"}}

