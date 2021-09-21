#####
#Deploy soldiers
#Author: Dave Hue
#####

#Foot soldier
function mywar:commands/deploy/foot_soldier

spreadplayers ~ ~ 0 20 false @e[tag=mywar.soldier,sort=nearest,distance=..200] 
