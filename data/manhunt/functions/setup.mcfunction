scoreboard objectives add player_health health {"text": "♡", "color": "red"}
# scoreboard objectives add player_health health "Health"
scoreboard objectives modify player_health rendertype hearts
scoreboard objectives setdisplay belowName player_health

scoreboard objectives add player_damage minecraft.custom:minecraft.damage_taken "Damage Taken"

scoreboard players set Ongoing manhunt 0

scoreboard objectives remove coins
scoreboard objectives add coins dummy

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


# tellraw @a {"text": "Commencer ?","color": "blue","bold": true}
# tellraw @a {"text": "Cliquer pour commencer","color": "blue","underlined": true, "clickEvent":{"action":"run_command","value":"/function manhunt:start-game"}}

