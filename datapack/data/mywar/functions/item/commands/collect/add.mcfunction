#####
#Adds soldier based on what they are 
#Author: Dave Hue
#####

#Foot soldiers
execute as @e[tag=mywar.foot_soldier,type=vindicator] at @s run scoreboard players add #mywar.temp.collect.foot_soldier.illager mywar.dummy 1 
execute as @e[tag=mywar.foot_soldier,type=zombie] at @s run scoreboard players add #mywar.temp.collect.foot_soldier.zombie mywar.dummy 1 

scoreboard players operation @s mywar.c_fs_i += #mywar.temp.collect.foot_soldier.illager mywar.dummy
scoreboard players operation @s mywar.c_fs_i += #mywar.temp.collect.foot_soldier.zombie mywar.dummy
scoreboard players reset #mywar.temp.collect.foot_soldier.illager mywar.dummy
scoreboard players reset #mywar.temp.collect.foot_soldier.zombie mywar.dummy

#Archer
execute as @e[tag=mywar.archer] at @s run scoreboard players add #mywar.temp.collect.archer mywar.dummy 1 
scoreboard players reset #mywar.temp.collect.archer mywar.dummy

#Kill
execute as @e[tag=mywar.foot_soldier] at @s run kill @s 
