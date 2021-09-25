#####
#Collects soldiers
#Author: Dave Hue
#####

#Adds soldier to the list based on what it is 
execute as @e[tag=mywar.soldier,team=mywar.friendly] at @s run function mywar:item/commands/collect/add

#Message
tellraw @s {"text":"Collecting soldiers!","color":"yellow"}
