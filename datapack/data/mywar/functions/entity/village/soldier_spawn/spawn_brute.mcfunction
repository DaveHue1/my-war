########
#Summons zombies
#Author: DaveHue
########

summon iron_golem ~ ~ ~ 
data modify entity @e[type=iron_golem,tag=!mywar.modified,sort=nearest,limit=1] {} merge from storage mywar:storage root.perm.soldier.brute.enemy

scoreboard players remove #mywar.spawn_limit2 mywar.dummy 1

execute if score #mywar.spawn_limit2 mywar.dummy matches 1.. run function mywar:entity/village/soldier_spawn/spawn_brute
