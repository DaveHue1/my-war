#####
#Deploys vindicator foot soldier
#Author: Dave Hue
#####

#Summons and modifies
summon vindicator ~ ~ ~ 
data modify entity @e[type=minecraft:vindicator,sort=nearest,limit=1] {} merge from storage mywar:storage perm.soldier.foot_soldier.illager

#Iteration
execute if 
