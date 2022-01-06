#####
#For when the player first spawns in
#Author: DaveHue
#####

#Message for spawning home base structure
tellraw @a[sort=nearest,limit=1] {"translate":"mywar.message.home_base.placement","color":"green"}
tellraw @a[sort=nearest,limit=1] {"translate":"mywar.message.home_base.warning","color":"red"}

#Give player home base item
function mywar:item/give/home_base

#Set player id 
function mywar:technical/player/spawn/id

