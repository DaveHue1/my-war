######
#Deploy foot soldier
#Author: Dave Hue
######

#Summons and modifies
summon vindicator ~ ~ ~ 
data modify entity @e[type=minecraft:vindicator,sort=nearest,limit=1,tag=!mywar.modified] {} merge from storage mywar:storage root.perm.soldier.foot_soldier

#Iteration
scoreboard players remove @s mywar.c_fs_i 1
execute if score @s mywar.c_fs_i matches 1.. run function mywar:item/commands/deploy/foot_soldier/deploy
