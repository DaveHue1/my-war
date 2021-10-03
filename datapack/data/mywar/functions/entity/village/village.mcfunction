#########
#Commands to execute upon village loading
#Author: DaveHue
#########

#Starts the cycle for summoning soldiers 
function mywar:entity/village/soldier_spawn/spawn_start

#Adds soldiers and villagers to team 
team join mywar.enemy @e[tag=mywar.soldier,team=!mywar.friendly,distance=..200] 

#Spreads soldiers
spreadplayers ~ ~ 0 50 false @e[team=mywar.enemy,tag=mywar.soldier,distance=..200] 
spreadplayers ~ ~ 0 50 false @e[team=mywar.enemy,type=horse,distance=..200] 

#Done
tag @s add mywar.village_done


