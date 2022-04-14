#####
#Collects foot soldier
#Author: Dave Hue
#####

#Foot soldiers
scoreboard players add #mywar.temp.collect.foot_soldier.illager mywar.dummy 1 
scoreboard players operation @a[predicate=mywar:controller/collect,sort=nearest,limit=1] mywar.c_fs_i += #mywar.temp.collect.foot_soldier.illager mywar.dummy
scoreboard players reset #mywar.temp.collect.foot_soldier.illager mywar.dummy
