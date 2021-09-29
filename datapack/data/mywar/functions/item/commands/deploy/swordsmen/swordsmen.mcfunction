#####
#Deploys vindicator foot soldier
#Author: Dave Hue
#####

#Summons and modifies
summon zombie ~ ~ ~ 
data modify entity @e[type=minecraft:zombie,sort=nearest,limit=1,tag=!mywar.modified] {} merge from storage mywar:storage root.perm.soldier.swordsmen.friendly

#Iteration
scoreboard players remove @s mywar.c_sm 1
execute if score @s mywar.c_sm matches 1.. run function mywar:item/commands/deploy/swordsmen/swordsmen 
