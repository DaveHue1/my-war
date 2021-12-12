#####
#Vindicator foot soldier collect
#Author: Dave Hue
#####

#Foot soldiers
scoreboard players add #mywar.temp.collect.foot_soldier.illager mywar.dummy 1 
scoreboard players operation @s mywar.c_fs_i += #mywar.temp.collect.foot_soldier.illager mywar.dummy
scoreboard players reset #mywar.temp.collect.foot_soldier.illager mywar.dummy
