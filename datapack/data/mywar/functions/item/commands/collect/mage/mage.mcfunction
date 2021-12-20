#####
#Mage collect
#Author: Dave Hue
#####

#Mage
scoreboard players add #mywar.temp.collect.mage mywar.dummy 1 
scoreboard players operation @a[predicate=mywar:commands/collect,sort=nearest,limit=1] mywar.c_mage += #mywar.temp.collect.mage mywar.dummy
scoreboard players reset #mywar.temp.collect.mage mywar.dummy
