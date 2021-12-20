######
#Tick function for village entity
#Author: Dave Hue
######

#Set up village
execute as @s[tag=!mywar.village_done] at @s run function mywar:entity/village/village

#Deplete progress bar
execute as @s[tag=mywar.village_done] run execute as @e[type=item,distance=..300,predicate=mywar:item/deplete/deplete_item] run function mywar:entity/village/deplete/deplete

#Particle
function mywar:entity/village/misc/particle/particle
