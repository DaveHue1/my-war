#####
#Swordsmen collect
#Author: Dave Hue
#####

#Swordsmen
scoreboard players add #mywar.temp.collect.swordsmen mywar.dummy 1 
scoreboard players operation @s mywar.c_sm += #mywar.temp.collect.swordsmen mywar.dummy
scoreboard players reset #mywar.temp.collect.swordsmen mywar.c_sm