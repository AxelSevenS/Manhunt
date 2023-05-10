
scoreboard objectives add has-crossbow dummy
execute as @s store result score @s has-crossbow run data get entity @s Inventory[{"id":"minecraft:crossbow",tag:{Unbreakable:1b,AttributeModifiers:[{AttributeName:"minecraft:generic.attack_damage",Amount:-0.5,Slot:mainhand,Operation:2,Name:"minecraft:generic.attack_damage",UUID:[I;-123410,11819,115527,-23638]}],display:{Name:'[{"text":"Old Crossbow","italic":false}]',Lore:['[{"text":"A good reliable crossbow;","italic":false}]','[{"text":"It\'s very precise, but it doesn\'t hurt too much...","italic":false}]']},Enchantments:[{"id":"minecraft:infinity","lvl":1s},{"id":"minecraft:vanishing_curse","lvl":1s}],HideFlags:4}}]

execute as @s[scores={has-crossbow=0}] run kill @e[type=item,nbt={Item:{"id":"minecraft:crossbow"}}, distance=..5, sort=nearest, limit=1]
execute as @s[scores={has-crossbow=0}] run clear @s crossbow{Unbreakable:1b,AttributeModifiers:[{AttributeName:"minecraft:generic.attack_damage",Amount:-0.5,Slot:mainhand,Operation:2,Name:"minecraft:generic.attack_damage",UUID:[I;-123410,11819,115527,-23638]}],display:{Name:'[{"text":"Old Crossbow","italic":false}]',Lore:['[{"text":"A good reliable crossbow;","italic":false}]','[{"text":"It\'s very precise, but it doesn\'t hurt too much...","italic":false}]']},Enchantments:[{"id":"minecraft:infinity","lvl":1s},{"id":"minecraft:vanishing_curse","lvl":1s}],HideFlags:4}
execute as @s[scores={has-crossbow=0}] run give @s crossbow{Unbreakable:1b,AttributeModifiers:[{AttributeName:"minecraft:generic.attack_damage",Amount:-0.5,Slot:mainhand,Operation:2,Name:"minecraft:generic.attack_damage",UUID:[I;-123410,11819,115527,-23638]}],display:{Name:'[{"text":"Old Crossbow","italic":false}]',Lore:['[{"text":"A good reliable crossbow;","italic":false}]','[{"text":"It\'s very precise, but it doesn\'t hurt too much...","italic":false}]']},Enchantments:[{"id":"minecraft:infinity","lvl":1s},{"id":"minecraft:vanishing_curse","lvl":1s}],HideFlags:4} 1

scoreboard objectives remove has-crossbow



scoreboard objectives add has-bow dummy
execute as @s store result score @s has-bow run data get entity @s Inventory[{"id":"minecraft:bow",tag:{Unbreakable:1b,AttributeModifiers:[{AttributeName:"minecraft:generic.attack_damage",Amount:-0.1,Slot:mainhand,Operation:2,Name:"minecraft:generic.attack_damage",UUID:[I;-123410,33307,123823,-66614]},{AttributeName:"minecraft:generic.attack_speed",Amount:-0.75,Slot:mainhand,Operation:2,Name:"minecraft:generic.attack_speed",UUID:[I;-123410,33407,123823,-66814]}],display:{Name:'[{"text":"Stolen Bow","italic":false}]',Lore:['[{"text":"A regular bow. Balanced in speed and Damage.","italic":false}]']},Enchantments:[{"id":"minecraft:infinity","lvl":1s},{"id":"minecraft:vanishing_curse","lvl":1s}],HideFlags:4}}]

execute as @s[scores={has-bow=0}, level=7..] run kill @e[type=item,nbt={Item:{"id":"minecraft:bow"}}, distance=..5, sort=nearest, limit=1]
execute as @s[scores={has-bow=0}, level=7..] run clear @s bow{Unbreakable:1b,AttributeModifiers:[{AttributeName:"minecraft:generic.attack_damage",Amount:-0.1,Slot:mainhand,Operation:2,Name:"minecraft:generic.attack_damage",UUID:[I;-123410,33307,123823,-66614]},{AttributeName:"minecraft:generic.attack_speed",Amount:-0.75,Slot:mainhand,Operation:2,Name:"minecraft:generic.attack_speed",UUID:[I;-123410,33407,123823,-66814]}],display:{Name:'[{"text":"Stolen Bow","italic":false}]',Lore:['[{"text":"A regular bow. Balanced in speed and Damage.","italic":false}]']},Enchantments:[{"id":"minecraft:infinity","lvl":1s},{"id":"minecraft:vanishing_curse","lvl":1s}],HideFlags:4}
execute as @s[scores={has-bow=0}, level=7..] run give @s bow{Unbreakable:1b,AttributeModifiers:[{AttributeName:"minecraft:generic.attack_damage",Amount:-0.1,Slot:mainhand,Operation:2,Name:"minecraft:generic.attack_damage",UUID:[I;-123410,33307,123823,-66614]},{AttributeName:"minecraft:generic.attack_speed",Amount:-0.75,Slot:mainhand,Operation:2,Name:"minecraft:generic.attack_speed",UUID:[I;-123410,33407,123823,-66814]}],display:{Name:'[{"text":"Stolen Bow","italic":false}]',Lore:['[{"text":"A regular bow. Balanced in speed and Damage.","italic":false}]']},Enchantments:[{"id":"minecraft:infinity","lvl":1s},{"id":"minecraft:vanishing_curse","lvl":1s}],HideFlags:4} 1

scoreboard objectives remove has-bow



scoreboard objectives add has-trident dummy

execute as @s store result score @s has-trident run data get entity @s Inventory[{"id":"minecraft:trident"}]

execute as @s[scores={has-trident=0}, level=15..] run kill @e[type=item,nbt={Item:{"id":"minecraft:trident",tag:{Unbreakable:1b,AttributeModifiers:[{AttributeName:"minecraft:generic.attack_damage",Amount:-0.1,Slot:mainhand,Operation:2,Name:"minecraft:generic.attack_damage",UUID:[I;-123410,22307,123823,-44614]},{AttributeName:"minecraft:generic.attack_speed",Amount:-0.75,Slot:mainhand,Operation:2,Name:"minecraft:generic.attack_speed",UUID:[I;-123410,22407,123823,-44814]}],display:{Name:'[{"text":"Dory","italic":false}]',Lore:['[{"text":"A thrown Spear, it deals little damage in melee, but is very strong when thrown.","italic":false}]']},Enchantments:[{"id":"minecraft:vanishing_curse","lvl":1s}],HideFlags:4}}}, distance=..5, sort=nearest, limit=1]
execute as @s[scores={has-trident=0}, level=15..] unless score @s trident-cooldown matches 1.. run function manhunt:roles/tracker/shoot_trident

execute as @s[scores={has-trident=0}, level=15..] unless score @s trident-cooldown matches 200 run scoreboard players add @s trident-cooldown 1 
title @s[scores={trident-cooldown=0..19}] actionbar [{"text":"Dory Cooldown: ","color":"white"}, {"text":"☐☐☐☐☐☐☐☐☐☐", "color":"#0018C8", "bold": true}]
title @s[scores={trident-cooldown=20..39}] actionbar [{"text":"Dory Cooldown: ","color":"white"}, {"text":"█☐☐☐☐☐☐☐☐☐", "color":"#0018C8", "bold": true}]
title @s[scores={trident-cooldown=40..59}] actionbar [{"text":"Dory Cooldown: ","color":"white"}, {"text":"██☐☐☐☐☐☐☐☐", "color":"#0018C8", "bold": true}]
title @s[scores={trident-cooldown=60..79}] actionbar [{"text":"Dory Cooldown: ","color":"white"}, {"text":"███☐☐☐☐☐☐☐", "color":"#0018C8", "bold": true}]
title @s[scores={trident-cooldown=80..99}] actionbar [{"text":"Dory Cooldown: ","color":"white"}, {"text":"████☐☐☐☐☐☐", "color":"#0018C8", "bold": true}]
title @s[scores={trident-cooldown=100..119}] actionbar [{"text":"Dory Cooldown: ","color":"white"}, {"text":"█████☐☐☐☐☐", "color":"#0018C8", "bold": true}]
title @s[scores={trident-cooldown=120..139}] actionbar [{"text":"Dory Cooldown: ","color":"white"}, {"text":"██████☐☐☐☐", "color":"#0018C8", "bold": true}]
title @s[scores={trident-cooldown=140..159}] actionbar [{"text":"Dory Cooldown: ","color":"white"}, {"text":"███████☐☐☐", "color":"#0018C8", "bold": true}]
title @s[scores={trident-cooldown=160..179}] actionbar [{"text":"Dory Cooldown: ","color":"white"}, {"text":"████████☐☐", "color":"#0018C8", "bold": true}]
title @s[scores={trident-cooldown=180..199}] actionbar [{"text":"Dory Cooldown: ","color":"white"}, {"text":"█████████☐", "color":"#0018C8", "bold": true}]
title @s[scores={trident-cooldown=200..}] actionbar [{"text":"Dory Cooldown: ","color":"white"}, {"text":"██████████", "color":"#0018C8", "bold": true}]
execute as @s[scores={has-trident=0, trident-cooldown=200..}, level=15..] run clear @s trident{Unbreakable:1b,AttributeModifiers:[{AttributeName:"minecraft:generic.attack_damage",Amount:-0.1,Slot:mainhand,Operation:2,Name:"minecraft:generic.attack_damage",UUID:[I;-123410,22307,123823,-44614]},{AttributeName:"minecraft:generic.attack_speed",Amount:-0.75,Slot:mainhand,Operation:2,Name:"minecraft:generic.attack_speed",UUID:[I;-123410,22407,123823,-44814]}],display:{Name:'[{"text":"Dory","italic":false}]',Lore:['[{"text":"A thrown Spear, it deals little damage in melee, but is very strong when thrown.","italic":false}]']},Enchantments:[{"id":"minecraft:vanishing_curse","lvl":1s}],HideFlags:4}
execute as @s[scores={has-trident=0, trident-cooldown=200..}, level=15..] run give @s trident{Unbreakable:1b,AttributeModifiers:[{AttributeName:"minecraft:generic.attack_damage",Amount:-0.1,Slot:mainhand,Operation:2,Name:"minecraft:generic.attack_damage",UUID:[I;-123410,22307,123823,-44614]},{AttributeName:"minecraft:generic.attack_speed",Amount:-0.75,Slot:mainhand,Operation:2,Name:"minecraft:generic.attack_speed",UUID:[I;-123410,22407,123823,-44814]}],display:{Name:'[{"text":"Dory","italic":false}]',Lore:['[{"text":"A thrown Spear, it deals little damage in melee, but is very strong when thrown.","italic":false}]']},Enchantments:[{"id":"minecraft:vanishing_curse","lvl":1s}],HideFlags:4} 1
execute as @s[scores={has-trident=0, trident-cooldown=200..}, level=15..] run kill @e[type=trident, tag=dory, limit=1]

scoreboard players set @s[scores={trident-cooldown=200..}] trident-cooldown 0

scoreboard objectives remove has-trident




scoreboard objectives add arrow-count dummy
execute as @s store result score @s arrow-count run data get entity @s Inventory[{"id":"minecraft:arrow"}].Count

execute as @s[scores={arrow-count=0}] run clear @s arrow
execute as @s[scores={arrow-count=0}] run give @s arrow 1

scoreboard objectives remove arrow-count