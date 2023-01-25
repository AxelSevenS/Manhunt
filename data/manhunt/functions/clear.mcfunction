function manhunt:end-game

scoreboard objectives remove manhunt
scoreboard objectives remove player_deaths
scoreboard objectives remove player_damage
scoreboard objectives remove player_health

data remove storage manhunt:hunted-position PosX
data remove storage manhunt:hunted-position PosY
data remove storage manhunt:hunted-position PosZ

data remove storage manhunt:record-game Time
# data remove storage manhunt:record-game Player

team remove hunted
team remove hunters