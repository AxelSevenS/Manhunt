
execute store result storage manhunt:hunted-position PosX int 1 run data get entity @a[team=hunted, limit=1] Pos[0]
execute store result storage manhunt:hunted-position PosY int 1 run data get entity @a[team=hunted, limit=1] Pos[1]
execute store result storage manhunt:hunted-position PosZ int 1 run data get entity @a[team=hunted, limit=1] Pos[2]

item modify entity @a[team=hunters] hotbar.0 manhunt:follow_hunted
item modify entity @a[team=hunters] hotbar.1 manhunt:follow_hunted
item modify entity @a[team=hunters] hotbar.2 manhunt:follow_hunted
item modify entity @a[team=hunters] hotbar.3 manhunt:follow_hunted
item modify entity @a[team=hunters] hotbar.4 manhunt:follow_hunted
item modify entity @a[team=hunters] hotbar.5 manhunt:follow_hunted
item modify entity @a[team=hunters] hotbar.6 manhunt:follow_hunted
item modify entity @a[team=hunters] hotbar.7 manhunt:follow_hunted
item modify entity @a[team=hunters] hotbar.8 manhunt:follow_hunted
item modify entity @a[team=hunters] inventory.0 manhunt:follow_hunted
item modify entity @a[team=hunters] inventory.1 manhunt:follow_hunted
item modify entity @a[team=hunters] inventory.3 manhunt:follow_hunted
item modify entity @a[team=hunters] inventory.4 manhunt:follow_hunted
item modify entity @a[team=hunters] inventory.5 manhunt:follow_hunted
item modify entity @a[team=hunters] inventory.6 manhunt:follow_hunted
item modify entity @a[team=hunters] inventory.7 manhunt:follow_hunted
item modify entity @a[team=hunters] inventory.8 manhunt:follow_hunted
item modify entity @a[team=hunters] inventory.9 manhunt:follow_hunted
item modify entity @a[team=hunters] inventory.10 manhunt:follow_hunted
item modify entity @a[team=hunters] inventory.11 manhunt:follow_hunted
item modify entity @a[team=hunters] inventory.12 manhunt:follow_hunted
item modify entity @a[team=hunters] inventory.13 manhunt:follow_hunted
item modify entity @a[team=hunters] inventory.14 manhunt:follow_hunted
item modify entity @a[team=hunters] inventory.15 manhunt:follow_hunted
item modify entity @a[team=hunters] inventory.16 manhunt:follow_hunted
item modify entity @a[team=hunters] inventory.17 manhunt:follow_hunted
item modify entity @a[team=hunters] inventory.18 manhunt:follow_hunted
item modify entity @a[team=hunters] inventory.19 manhunt:follow_hunted
item modify entity @a[team=hunters] inventory.20 manhunt:follow_hunted
item modify entity @a[team=hunters] inventory.21 manhunt:follow_hunted
item modify entity @a[team=hunters] inventory.22 manhunt:follow_hunted
item modify entity @a[team=hunters] inventory.23 manhunt:follow_hunted
item modify entity @a[team=hunters] inventory.24 manhunt:follow_hunted
item modify entity @a[team=hunters] inventory.25 manhunt:follow_hunted
item modify entity @a[team=hunters] inventory.26 manhunt:follow_hunted
item modify entity @a[team=hunters] weapon manhunt:follow_hunted
item modify entity @a[team=hunters] weapon.mainhand manhunt:follow_hunted
item modify entity @a[team=hunters] weapon.offhand manhunt:follow_hunted