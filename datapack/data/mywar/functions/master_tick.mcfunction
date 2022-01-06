##########
#Main tick function
#Author: DaveHue
#Main tick function, subdivides into ticking for players, main entities and deplete item 
##########

#Ticking for entities
execute as @e[tag=mywar.entity] at @s run function mywar:tick/entity_tick


