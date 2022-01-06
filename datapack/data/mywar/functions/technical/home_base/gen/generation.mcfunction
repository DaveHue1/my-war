##############
#Generate function
#Author: DaveHue
##############

#Gives the player items
function mywar:technical/home_base/gen/give

#Creates home base structure
function mywar:technical/home_base/gen/placement

#Set the player's spawn and clear item from inventory 
function mywar:technical/home_base/gen/set_spawn

#Sets the home base coords to teleport back to 
function mywar:technical/home_base/gen/coords

#Sets advisors' ids 
scoreboard players operation @e[tag=mywar.advisor,type=villager,sort=nearest,limit=2] mywar.id = @a[sort=nearest,limit=1] mywar.id

#Kills entities
kill @e[type=marker,tag=mywar.teleport,sort=nearest,limit=1]
kill @s
