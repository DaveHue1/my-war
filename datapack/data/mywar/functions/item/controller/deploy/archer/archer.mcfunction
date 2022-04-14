#####
#Deploys vindicator foot soldier
#Author: Dave Hue
#####

#Summons and modifies
summon skeleton ~ ~ ~
data modify entity @e[type=minecraft:skeleton,sort=nearest,limit=1,tag=!mywar.modified] {} merge from storage mywar:storage root.perm.soldier.archer

#Iteration
scoreboard players remove @s mywar.c_archer 1
execute if score @s mywar.c_archer matches 1.. run function mywar:item/controller/deploy/archer/archer 
