#####
#Deploy soldiers
#Author: Dave Hue
#####

#Foot soldier
function mywar:item/commands/deploy/foot_soldier/deploy

#Archer
function mywar:item/commands/deploy/archer/deploy

#Swordsmen
function mywar:item/commands/deploy/swordsmen/deploy

#Knight
function mywar:item/commands/deploy/knight/deploy

#Mage
function mywar:item/commands/deploy/mage/deploy

spreadplayers ~ ~ 0 30 false @e[team=mywar.friendly,tag=mywar.soldier,sort=nearest,distance=..200] 
spreadplayers ~ ~ 0 30 false @e[team=mywar.friendly,type=horse,sort=nearest,distance=..200] 