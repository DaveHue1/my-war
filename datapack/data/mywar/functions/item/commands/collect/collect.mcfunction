#####
#Collects soldiers
#Author: Dave Hue
#####

#Sound 
playsound minecraft:block.note_block.bass master @s ~ ~ ~

#Adds soldier to the list based on what it is 
execute if score @s mywar.cl matches ..99 run execute store result score @s mywar.cl run tag @e[team=mywar.friendly,tag=mywar.soldier,sort=random,limit=100] add mywar.collected
execute as @e[tag=mywar.collected] at @s run function mywar:item/commands/collect/add
execute if score @s mywar.cl matches 100.. run tellraw @s {"text":"Max limit reached","color":"red"}

#Message
execute if score @s mywar.cl matches ..99 run tellraw @s {"text":"Collecting soldiers!","color":"yellow"}
