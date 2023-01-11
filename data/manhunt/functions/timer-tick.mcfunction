scoreboard players add Timer manhunt 1

execute if score Timer manhunt matches 20.. run scoreboard players add Seconds manhunt 1 
execute if score Timer manhunt matches 20.. run scoreboard players remove RevealTimer manhunt 1

execute if score Timer manhunt matches 20.. run scoreboard players set Timer manhunt 0

execute if score Seconds manhunt matches 60.. run scoreboard players add Minutes manhunt 1
execute if score Seconds manhunt matches 60.. run scoreboard players set Seconds manhunt 0

execute if score Minutes manhunt matches 60.. run scoreboard players add Hours manhunt 1
execute if score Minutes manhunt matches 60.. run scoreboard players set Minutes manhunt 0

execute if score RevealTimer manhunt matches ..0 run function manhunt:reveal-hunted-position