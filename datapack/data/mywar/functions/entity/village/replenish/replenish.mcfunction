###############
#Starts spawn iteration
#Author: DaveHue
###############

scoreboard players operation #mywar.replenish_limit2 mywar.dummy = #mywar.replenish_limit mywar.dummy

scoreboard players operation #mywar.replenish_limit2 mywar.dummy /= #mywar.spawn_count mywar.dummy

execute if score #mywar.conquest_level mywar.dummy matches 0.. run function mywar:entity/village/replenish/spawn_zombie

spreadplayers ~ ~ 0 30 false @e[tag=mywar.soldier,team=mywar.enemy,distance=..5]