######
#Tick function for village entity
#Author: Dave Hue
######

#Set up village
execute as @s[tag=!mywar.village_done] at @s run function mywar:entity/village/village

#Deplete progress bar
execute as @s[tag=mywar.village_done] run execute as @e[type=item,distance=..300] at @s if predicate mywar:item/deplete_item run function mywar:entity/village/deplete/deplete

#Particle
execute as @s[tag=mywar.village_captured] at @s run particle minecraft:wax_on ~ ~ ~ 0 10 0 0.01 20
