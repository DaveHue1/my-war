######
#Tick function for village entity
#Author: Dave Hue
######

#Deplete progress for capturing village
execute as @e[type=item,distance=..300,predicate=mywar:item/deplete/deplete_item] run function mywar:entity/village/deplete/deplete

#Particle
function mywar:entity/village/misc/particle/particle
