#####
#Detects if player right clicked waypoint
#Author: DaveHue
#####

#Right clicked waypoint
execute if entity @e[type=villager,tag=mywar.wpr,distance=..10,sort=nearest,limit=1] run execute as @e[type=marker,tag=mywar.village,sort=nearest,limit=1] at @s run function mywar:entity/village/misc/waypoint_right_click

#Revoke advancement 
advancement revoke @s only mywar:player/right_click_pending