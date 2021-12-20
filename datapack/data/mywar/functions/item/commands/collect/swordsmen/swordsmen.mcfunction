#####
#Swordsmen collect
#Author: Dave Hue
#####

#Swordsmen
scoreboard players add #mywar.temp.collect.swordsmen mywar.dummy 1 
scoreboard players operation @a[predicate=mywar:commands/collect,sort=nearest,limit=1] mywar.c_mage += #mywar.temp.collect.mage mywar.dummy
 mywar.c_sm += #mywar.temp.collect.swordsmen mywar.dummy
scoreboard players reset #mywar.temp.collect.swordsmen mywar.dummy