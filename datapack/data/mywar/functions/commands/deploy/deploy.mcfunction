#####
#Deploy soldiers
#Author: Dave Hue
#####

#Foot soldier
function mywar:commands/deploy/foot_soldier/deploy

spreadplayers ~ ~ 0 20 false @e[team=mywar.friendly,tag=mywar.soldier,sort=nearest,distance=..200] 