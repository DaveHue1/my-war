##############
#Generate function
#Author: DaveHue
##############

#Gives the player command items
execute as @a[tag=mywar.warning,sort=nearest,limit=1] run function mywar:item/give/commands_items
execute as @a[tag=mywar.warning,sort=nearest,limit=1] run function mywar:item/give/village_tracker

#Creates home base structure
setblock ~ ~ ~10 structure_block{mode:"LOAD",name:"mywar:castle",ignoreEntities:0b}
setblock ~1 ~ ~10 redstone_block
tp @a @e[type=armor_stand,tag=mywar.teleport,sort=nearest,limit=1]
execute as @e[type=armor_stand,tag=mywar.teleport,sort=nearest,limit=1] at @s run spawnpoint @a[sort=nearest,limit=1]
clear @a[tag=mywar.warning,sort=nearest,limit=1] minecraft:armor_stand{Name:'{"text":"Home Base","color":"green","italic":false}'} 1

#Sets the home base coords to teleport back to 
function mywar:technical/home_base

#Kills entity
kill @s
