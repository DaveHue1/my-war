#####
#Adds soldier based on what they are 
#Author: Dave Hue
#####

#Foot soldiers
execute as @e[team=mywar.friendly,tag=mywar.foot_soldier,type=vindicator] at @s run scoreboard players add #mywar.temp.collect.foot_soldier.illager mywar.dummy 1 
execute as @e[team=mywar.friendly,tag=mywar.foot_soldier,type=zombie] at @s run scoreboard players add #mywar.temp.collect.foot_soldier.zombie mywar.dummy 1 

scoreboard players operation @s mywar.c_fs_i += #mywar.temp.collect.foot_soldier.illager mywar.dummy
scoreboard players operation @s mywar.c_fs_z += #mywar.temp.collect.foot_soldier.zombie mywar.dummy
scoreboard players reset #mywar.temp.collect.foot_soldier.illager mywar.dummy
scoreboard players reset #mywar.temp.collect.foot_soldier.zombie mywar.dummy

#Archer
execute as @e[team=mywar.friendly,tag=mywar.archer] at @s run scoreboard players add #mywar.temp.collect.archer mywar.dummy 1 
scoreboard players operation @s mywar.c_archer += #mywar.temp.collect.archer mywar.dummy
scoreboard players reset #mywar.temp.collect.archer mywar.dummy

#Swordsmen
execute as @e[team=mywar.friendly,tag=mywar.swordsmen] at @s run scoreboard players add #mywar.temp.collect.swordsmen mywar.dummy 1 
scoreboard players operation @s mywar.c_sm += #mywar.temp.collect.swordsmen mywar.dummy
scoreboard players reset #mywar.temp.collect.swordsmen mywar.c_sm

#Knight
execute as @e[team=mywar.friendly,tag=mywar.knight] at @s run scoreboard players add #mywar.temp.collect.knight mywar.dummy 1 
scoreboard players operation @s mywar.c_knight += #mywar.temp.collect.knight mywar.dummy
scoreboard players reset #mywar.temp.collect.knight mywar.dummy

#Mage
execute as @e[team=mywar.friendly,tag=mywar.mage] at @s run scoreboard players add #mywar.temp.collect.mage mywar.dummy 1 
scoreboard players operation @s mywar.c_mage += #mywar.temp.collect.mage mywar.dummy
scoreboard players reset #mywar.temp.collect.mage mywar.dummy

#Kill
execute as @e[team=mywar.friendly,tag=mywar.soldier] at @s run kill @s 
