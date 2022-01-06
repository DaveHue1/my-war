#####
#Deploys mage
#Author: Dave Hue
#####

#Summons and modifies
summon zombie ~ ~ ~ 
data modify entity @e[type=minecraft:zombie,sort=nearest,limit=1,tag=!mywar.modified] {} merge from storage mywar:storage root.perm.soldier.mage

#Iteration
scoreboard players remove @s mywar.c_mage 1
execute if score @s mywar.c_mage matches 1.. run function mywar:item/controller/deploy/mage/mage 
