#####
#Determine the depth of the water that the entity is in 
#Author: DaveHue
#####

execute if block ~ ~ ~ water run function mywar:entity/village/float/place
execute positioned ~ ~1 ~ if block ~ ~ ~ water run function mywar:entity/village/float/depth