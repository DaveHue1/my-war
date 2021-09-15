#########
#Commands to execute upon village loading
#Author: DaveHue
#########

#Place village marker for capturing 
summon marker ~ ~ ~ {Tags:["mywar.entity","mywar.village_marker"],PersistenceRequired:1b}

#Starts the cycle for summoning soldiers 
function mywar:entity/village/soldier_spawn/spawn_start

#Adds soldiers and villagers to team 
team join mywar.enemy @e[type=villager,distance=..200] 
team join mywar.enemy @e[tag=mywar.entity,tag=mywar.soldier,distance=..200] 

kill @s


