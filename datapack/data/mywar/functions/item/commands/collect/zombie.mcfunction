#####
#Foot soldier collect
#Author: Dave Hue
#####


#Foot soldiers
scoreboard players add #mywar.temp.collect.foot_soldier.zombie mywar.dummy 1 
scoreboard players operation @s mywar.c_fs_z += #mywar.temp.collect.foot_soldier.zombie mywar.dummy
scoreboard players reset #mywar.temp.collect.foot_soldier.zombie mywar.dummy
