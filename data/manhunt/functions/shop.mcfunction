summon minecraft:villager ~ ~ ~ {VillagerData:{type:"plains",profession:"farmer",level:2}}
data modify entity @e[type=villager, distance=..5, limit=1] VillagerData.level set value 5
data modify entity @e[type=villager, distance=..5, limit=1] Invulnerable set value true
data modify entity @e[type=villager, distance=..5, limit=1] Offers.Recipes set value [{buy:{Count:1,id:"minecraft:axolotl_spawn_egg", tag:{display:{Name:"\"Easter Coin\""}}}, sell:{id:diamond,Count:7}, maxUses:90, rewardExp:false}]
