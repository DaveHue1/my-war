##############
#Generate function
#Author: DaveHue
##############

#Gives the player items
execute as @a[tag=mywar.warning,sort=nearest,limit=1] run function mywar:item/give/commands_items
execute as @a[tag=mywar.warning,sort=nearest,limit=1] run function mywar:item/give/village_tracker
execute as @a[tag=mywar.warning,sort=nearest,limit=1] run function mywar:item/give/money
execute as @a[tag=mywar.warning,sort=nearest,limit=1] run function mywar:item/give/money
give @a cooked_beef 16

#Creates home base structure
setblock ~ ~ ~10 structure_block{mode:"LOAD",name:"mywar:castle",ignoreEntities:0b}
setblock ~1 ~ ~10 redstone_block
tp @a @e[type=armor_stand,tag=mywar.teleport,sort=nearest,limit=1]
execute as @e[type=armor_stand,tag=mywar.teleport,sort=nearest,limit=1] at @s run spawnpoint @a[sort=nearest,limit=1]
clear @a[tag=mywar.warning,sort=nearest,limit=1] minecraft:armor_stand{Name:'{"text":"Home Base","color":"green","italic":false}'} 1

#Modifies Advisor Villager
data merge entity @e[type=villager,limit=1,sort=nearest,tag=mywar.advisor,tag=mywar.entity,tag=!mywar.advisor_merged] {Invulnerable:1b,CustomNameVisible:1b,Tags:["mywar.entity","mywar.advisor","mywar.advisor_merged"],CustomName:'{"text":"Advisor","color":"aqua","bold":true,"italic":false}',VillagerData:{profession:"minecraft:nitwit"},Offers:{Recipes:[{maxUses:2147483647,buy:{id:"minecraft:ink_sac",Count:5b,tag:{display:{Name:'{"text":"Money","color":"yellow","bold":true,"italic":false}'},CustomModelData:1,mywar.currency:1b,mywar.item:1b}},sell:{id:"minecraft:cooked_beef",Count:1b}},{maxUses:2147483647,buy:{id:'minecraft:ink_sac',Count:2b,tag:{display:{Name:'{"text":"Money","color":"yellow","bold":true,"italic":false}'},CustomModelData:1,mywar.currency:1b,mywar.item:1b}},sell:{id:"minecraft:structure_void",Count:1b,tag:{display:{Name:'{"text":"Foot Soldier","color":"yellow","italic":false}'},CustomModelData:1,mywar.foot_soldier:1b}}}]}}

#Sets the home base coords to teleport back to 
function mywar:technical/home_base

#Kills entity
kill @s
