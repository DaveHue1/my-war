#####
#Archer collect
#Author: Dave Hue
#####

#Archer
scoreboard players add #mywar.temp.collect.archer mywar.dummy 1 
scoreboard players operation @a[predicate=mywar:commands/collect,sort=nearest,limit=1] mywar.c_archer += #mywar.temp.collect.archer mywar.dummy
scoreboard players reset #mywar.temp.collect.archer mywar.dummy
