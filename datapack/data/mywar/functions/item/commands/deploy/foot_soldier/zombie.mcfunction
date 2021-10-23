#####
#Deploys zombie foot soldier
#Author: Dave Hue
#####

#Summons and modifies
summon zombie ~ ~ ~ 
data modify entity @e[type=minecraft:zombie,sort=nearest,limit=1,tag=!mywar.modified] {} merge from storage mywar:storage root.perm.soldier.foot_soldier.zombie.friendly

#Iteration
scoreboard players remove @s mywar.c_fs_z 1
execute if score @s mywar.c_fs_z matches 1.. run function mywar:item/commands/deploy/foot_soldier/zombie 