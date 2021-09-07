##########
#Main tick function
#Author: DaveHue
#Main tick function, subdivides into ticking for players and entities 
##########

#Ticking for entities
execute as @e[tag=mywar.entity] at @s run function mywar:tick/entity_tick

#Ticking for players
execute as @a at @s run function mywar:tick/player_tick
