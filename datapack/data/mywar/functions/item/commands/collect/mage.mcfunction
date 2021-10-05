#####
#Mage collect
#Author: Dave Hue
#####

#Mage
scoreboard players add #mywar.temp.collect.mage mywar.dummy 1 
scoreboard players operation @s mywar.c_mage += #mywar.temp.collect.mage mywar.dummy
scoreboard players reset #mywar.temp.collect.mage mywar.dummy
