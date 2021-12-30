#########
#Commands to execute upon village loading
#Author: DaveHue
#########

#Join enemy team
team join mywar.enemy @s

#Starts the cycle for summoning soldiers 
function mywar:entity/village/soldier_spawn/spawn_start

#Adds soldiers and villagers to team 
team join mywar.enemy @e[tag=mywar.soldier,team=!mywar.red,team=!mywar.blue,team=!mywar.green,team=!mywar.yellow,distance=..200] 
team join mywar.enemy @e[type=villager,team=!mywar.red,team=!mywar.blue,team=!mywar.green,team=!mywar.yellow,distance=..200] 

#Spreads soldiers
spreadplayers ~ ~ 0 50 false @e[team=mywar.enemy,tag=mywar.soldier,distance=..200] 
spreadplayers ~ ~ 0 50 false @e[team=mywar.enemy,type=skeleton_horse,distance=..200] 

#Score 
scoreboard players operation @s mywar.er = @a[sort=nearest,limit=1] mywar.spawn_limit

#Tag
tag @s add mywar.village_done




