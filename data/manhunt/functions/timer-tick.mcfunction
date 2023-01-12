scoreboard players add Timer manhunt 1


# check if 20 ticks have passed
execute store success score #bool manhunt run execute if score Timer manhunt matches 20..
execute if score #bool manhunt matches 1 run scoreboard players add Seconds manhunt 1 
execute if score #bool manhunt matches 1 run scoreboard players remove RevealTimer manhunt 1
execute if score #bool manhunt matches 1 run scoreboard players set Timer manhunt 0


# check if 60 seconds have passed
execute store success score #bool manhunt run execute if score Seconds manhunt matches 60..
execute if score #bool manhunt matches 1 run scoreboard players add Minutes manhunt 1
execute if score #bool manhunt matches 1 run scoreboard players set Seconds manhunt 0


# check if 60 minutes have passed
execute store success score #bool manhunt run execute if score Minutes manhunt matches 60..
execute if score #bool manhunt matches 1 run scoreboard players add Hours manhunt 1
execute if score #bool manhunt matches 1 run scoreboard players set Minutes manhunt 0


# check if the reveal delay was reached
execute store success score #bool manhunt run execute if score RevealTimer manhunt matches ..0
execute if score #bool manhunt matches 1 run function manhunt:utility/reveal-hunted-position
execute if score #bool manhunt matches 1 run scoreboard players set RevealTimer manhunt 360