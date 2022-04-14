##########
#Waypoint right click detection
#Author: DaveHue
##########
function mywar:entity/village/capture/waypoint
scoreboard players set @a[scores={mywar.vrc=1..},sort=nearest,limit=1] mywar.vrc 0
