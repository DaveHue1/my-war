##############
#Generate function
#Author: DaveHue
##############

#Gives the player command items
function mywar:items/give/commands_items

#Creates home base structure
setblock ~ ~ ~10 structure_block{mode:"LOAD",name:"mywar:castle",ignoreEntities:0b}
setblock ~1 ~ ~10 redstone_block
tp @a @e[type=armor_stand,tag=mywar.teleport,sort=nearest,limit=1]
execute as @e[type=armor_stand,tag=mywar.teleport,sort=nearest,limit=1] at @s run spawnpoint @a[sort=nearest,limit=1]
clear @a[tag=mywar.warning,sort=nearest,limit=1] minecraft:armor_stand{Name:'{"text":"Home Base","color":"green","italic":false}'} 1

#Kills entity
kill @s
