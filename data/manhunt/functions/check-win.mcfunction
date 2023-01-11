scoreboard players set Ongoing manhunt 0
scoreboard objectives remove player_deaths

tellraw @a [{"text":"Temps actuel : "}, {"score": {"name": "Hours", "objective":"manhunt"}}, {"text":"h"}, {"score": {"name": "Minutes", "objective":"manhunt"}}, {"text":"m"}, {"score": {"name": "Seconds", "objective":"manhunt"}}, {"text":"s"}]

scoreboard players set RevealTimer manhunt 0
scoreboard players set Timer manhunt 0
scoreboard players set Seconds manhunt 0
scoreboard players set Minutes manhunt 0
scoreboard players set Hours manhunt 0
team leave @a

bossbar remove reveal-timer
