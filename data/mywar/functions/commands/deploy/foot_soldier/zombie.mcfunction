#####
#Deploys zombie foot soldier
#Author: Dave Hue
#####

#Summons and modifies
summon zombie ~ ~ ~ 
data modify entity @e[type=minecraft:zombie,sort=nearest,limit=1] {} merge from storage mywar:storage perm.soldier.foot_soldier.zombie

#Iteration
scoreboard players remove @s mywar.c_fs_z 1
execute if score @s mywar.c_fs_z matches 1.. run function mywar:commands/deploy/foot_soldier/zombie 
