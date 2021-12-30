#####
#For when the player first spawns in
#Author: DaveHue
#####

#Message for spawning home base structure
tellraw @s [{"text":"Place down the Home Base structure to start","color":"green"}]
tellraw @s [{"text":"Warning: Home base will replace existing blocks, place in clear area.","color":"red"}]

#Give player home base item
function mywar:item/give/home_base

#Set player id 
function mywar:technical/player/spawn/id

