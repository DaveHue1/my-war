#####
#Upgrade advisor
#Author: DaveHue
#####

execute if score #mywar.current_conquest_level mywar.dummy matches 5 run data merge entity @e[type=villager,limit=1,sort=nearest,tag=mywar.advisor,tag=mywar.entity,tag=mywar.advisor_merged] {Invulnerable:1b,CustomNameVisible:1b,Tags:["mywar.entity","mywar.advisor","mywar.advisor_merged"],CustomName:'{"text":"Advisor","color":"aqua","bold":true,"italic":false}',VillagerData:{profession:"minecraft:nitwit"},Offers:{Recipes:[{maxUses:2147483647,buy:{id:'minecraft:ink_sac',Count:2b,tag:{display:{Name:'{"text":"Money","color":"yellow","bold":true,"italic":false}'},CustomModelData:1,mywar.currency:1b,mywar.item:1b}},sell:{id:'minecraft:structure_void',Count:1b,tag:{display:{Name:'{"text":"Foot Soldier","color":"yellow","italic":false}'},CustomModelData:1,mywar.foot_soldier:1b}}},{maxUses:2147483647,buy:{id:'minecraft:ink_sac',Count:4b,tag:{display:{Name:'{"text":"Money","color":"yellow","bold":true,"italic":false}'},CustomModelData:1,mywar.currency:1b,mywar.item:1b}},sell:{id:'minecraft:structure_void',Count:1b,tag:{display:{Name:'{"text":"Archer","color":"yellow","italic":false}'},CustomModelData:2,mywar.archer:1b}}}]}}

execute if score #mywar.current_conquest_level mywar.dummy matches 10 run data merge entity @e[type=villager,limit=1,sort=nearest,tag=mywar.advisor,tag=mywar.entity,tag=mywar.advisor_merged] {Invulnerable:1b,CustomNameVisible:1b,Tags:["mywar.entity","mywar.advisor","mywar.advisor_merged"],CustomName:'{"text":"Advisor","color":"aqua","bold":true,"italic":false}',VillagerData:{profession:"minecraft:nitwit"},Offers:{Recipes:[{maxUses:2147483647,buy:{id:'minecraft:ink_sac',Count:2b,tag:{display:{Name:'{"text":"Money","color":"yellow","bold":true,"italic":false}'},CustomModelData:1,mywar.currency:1b,mywar.item:1b}},sell:{id:"minecraft:structure_void",Count:1b,tag:{display:{Name:'{"text":"Foot Soldier","color":"yellow","italic":false}'},CustomModelData:1,mywar.foot_soldier:1b}}},{maxUses:2147483647,buy:{id:'minecraft:ink_sac',Count:4b,tag:{display:{Name:'{"text":"Money","color":"yellow","bold":true,"italic":false}'},CustomModelData:1,mywar.currency:1b,mywar.item:1b}},sell:{id:"minecraft:structure_void",Count:1b,tag:{display:{Name:'{"text":"Archer","color":"yellow","italic":false}'},CustomModelData:2,mywar.archer:1b}}},{maxUses:2147483647,buy:{id:'minecraft:ink_sac',Count:4b,tag:{display:{Name:'{"text":"Money","color":"yellow","bold":true,"italic":false}'},CustomModelData:1,mywar.currency:1b,mywar.item:1b}},sell:{id:"minecraft:structure_void",Count:1b,tag:{display:{Name:'{"text":"Swordsman","color":"yellow","italic":false}'},CustomModelData:3,mywar.swordsmen:1b}}}]}}
 
execute if score #mywar.current_conquest_level mywar.dummy matches 15 run data merge entity @e[type=villager,limit=1,sort=nearest,tag=mywar.advisor,tag=mywar.entity,tag=mywar.advisor_merged] {Invulnerable:1b,CustomNameVisible:1b,Tags:["mywar.entity","mywar.advisor","mywar.advisor_merged"],CustomName:'{"text":"Advisor","color":"aqua","bold":true,"italic":false}',VillagerData:{profession:"minecraft:nitwit"},Offers:{Recipes:[{maxUses:2147483647,buy:{id:'minecraft:ink_sac',Count:2b,tag:{display:{Name:'{"text":"Money","color":"yellow","bold":true,"italic":false}'},CustomModelData:1,mywar.currency:1b,mywar.item:1b}},sell:{id:'minecraft:structure_void',Count:1b,tag:{display:{Name:'{"text":"Foot Soldier","color":"yellow","italic":false}'},CustomModelData:1,mywar.foot_soldier:1b}}},{maxUses:2147483647,buy:{id:'minecraft:ink_sac',Count:4b,tag:{display:{Name:'{"text":"Money","color":"yellow","bold":true,"italic":false}'},CustomModelData:1,mywar.currency:1b,mywar.item:1b}},sell:{id:"minecraft:structure_void",Count:1b,tag:{display:{Name:'{"text":"Archer","color":"yellow","italic":false}'},CustomModelData:2,mywar.archer:1b}}},{maxUses:2147483647,buy:{id:'minecraft:ink_sac',Count:4b,tag:{display:{Name:'{"text":"Money","color":"yellow","bold":true,"italic":false}'},CustomModelData:1,mywar.currency:1b,mywar.item:1b}},sell:{id:"minecraft:structure_void",Count:1b,tag:{display:{Name:'{"text":"Swordsman","color":"yellow","italic":false}'},CustomModelData:3,mywar.swordsmen:1b}}},{maxUses:2147483647,buy:{id:'minecraft:ink_sac',Count:6b,tag:{display:{Name:'{"text":"Money","color":"yellow","bold":true,"italic":false}'},CustomModelData:1,mywar.currency:1b,mywar.item:1b}},sell:{id:"minecraft:structure_void",Count:1b,tag:{display:{Name:'{"text":"Knight","color":"yellow","italic":false}'},CustomModelData:4,mywar.knight:1b}}}]}}

execute if score #mywar.current_conquest_level mywar.dummy matches 20 run data merge entity @e[type=villager,limit=1,sort=nearest,tag=mywar.advisor,tag=mywar.entity,tag=mywar.advisor_merged] {Invulnerable:1b,CustomNameVisible:1b,Tags:["mywar.entity","mywar.advisor","mywar.advisor_merged"],CustomName:'{"text":"Advisor","color":"aqua","bold":true,"italic":false}',VillagerData:{profession:"minecraft:nitwit"},Offers:{Recipes:[{maxUses:2147483647,buy:{id:'minecraft:ink_sac',Count:2b,tag:{display:{Name:'{"text":"Money","color":"yellow","bold":true,"italic":false}'},CustomModelData:1,mywar.currency:1b,mywar.item:1b}},sell:{id:'minecraft:structure_void',Count:1b,tag:{display:{Name:'{"text":"Foot Soldier","color":"yellow","italic":false}'},CustomModelData:1,mywar.foot_soldier:1b}}},{maxUses:2147483647,buy:{id:'minecraft:ink_sac',Count:4b,tag:{display:{Name:'{"text":"Money","color":"yellow","bold":true,"italic":false}'},CustomModelData:1,mywar.currency:1b,mywar.item:1b}},sell:{id:"minecraft:structure_void",Count:1b,tag:{display:{Name:'{"text":"Archer","color":"yellow","italic":false}'},CustomModelData:2,mywar.archer:1b}}},{maxUses:2147483647,buy:{id:'minecraft:ink_sac',Count:4b,tag:{display:{Name:'{"text":"Money","color":"yellow","bold":true,"italic":false}'},CustomModelData:1,mywar.currency:1b,mywar.item:1b}},sell:{id:"minecraft:structure_void",Count:1b,tag:{display:{Name:'{"text":"Swordsman","color":"yellow","italic":false}'},CustomModelData:3,mywar.swordsmen:1b}}},{maxUses:2147483647,buy:{id:'minecraft:ink_sac',Count:6b,tag:{display:{Name:'{"text":"Money","color":"yellow","bold":true,"italic":false}'},CustomModelData:1,mywar.currency:1b,mywar.item:1b}},sell:{id:"minecraft:structure_void",Count:1b,tag:{display:{Name:'{"text":"Knight","color":"yellow","italic":false}'},CustomModelData:4,mywar.knight:1b}}},{maxUses:2147483647,buy:{id:'minecraft:ink_sac',Count:4b,tag:{display:{Name:'{"text":"Money","color":"yellow","bold":true,"italic":false}'},CustomModelData:1,mywar.currency:1b,mywar.item:1b}},sell:{id:"minecraft:structure_void",Count:1b,tag:{display:{Name:'{"text":"Mage","color":"yellow","italic":false}'},CustomModelData:5,mywar.mage:1b}}}]}}

