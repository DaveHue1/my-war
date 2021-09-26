###############
#Starts spawn iteration
#Author: DaveHue
###############

scoreboard players operation #mywar.spawn_limit2 mywar.dummy = #mywar.spawn_limit mywar.dummy

scoreboard players operation #mywar.spawn_limit2 mywar.dummy /= #mywar.spawn_count mywar.dummy

execute if score #mywar.current_conquest_level mywar.dummy matches 0.. run function mywar:entity/village/soldier_spawn/spawn_zombie

scoreboard players operation #mywar.spawn_limit2 mywar.dummy = #mywar.spawn_limit mywar.dummy

scoreboard players operation #mywar.spawn_limit2 mywar.dummy /= #mywar.spawn_count mywar.dummy

execute if score #mywar.current_conquest_level mywar.dummy matches 5.. run function mywar:entity/village/soldier_spawn/spawn_archer
