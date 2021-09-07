##############
#Generate function
#Author: DaveHue
##############

#Gives the player command items
give @a[tag=mywar.warning] carrot_on_a_stick{display:{Name:'{"text":"Spread Soldiers","color":"aqua","italic":false}'},mywar.spread:1b,CustomModelData:5} 1
give @a[tag=mywar.warning] carrot_on_a_stick{display:{Name:'{"text":"Aggro Soldiers","color":"aqua","italic":false}'},mywar.aggro:1b,CustomModelData:1} 1
give @a[tag=mywar.warning] carrot_on_a_stick{display:{Name:'{"text":"Teleport Home","color":"aqua","italic":false}'},mywar.teleport:1b,CustomModelData:4} 1
give @a[tag=mywar.warning] carrot_on_a_stick{display:{Name:'{"text":"Detonate Bomb","color":"aqua","italic":false}'},mywar.detonate:1b,CustomModelData:3} 1
give @a[tag=mywar.warning] carrot_on_a_stick{display:{Name:'{"text":"Collect Soldiers","color":"aqua","italic":false}'},mywar.collect:1b,CustomModelData:2} 1
give @a[tag=mywar.warning] carrot_on_a_stick{display:{Name:'{"text":"Tax Villages","color":"aqua","italic":false}'},mywar.tax:1b,CustomModelData:6} 1

#Creates home base structure
setblock ~ ~ ~10 structure_block{mode:"LOAD",name:"mywar:castle",ignoreEntities:0b}
setblock ~1 ~ ~10 redstone_block
tp @a @e[type=armor_stand,tag=mywar.teleport,sort=nearest,limit=1]
execute as @e[type=armor_stand,tag=mywar.teleport,sort=nearest,limit=1] at @s run spawnpoint @a[sort=nearest,limit=1]

#Kills entity
kill @s
