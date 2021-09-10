############
#Sets the global home coordinates 
#Author: DaveHue
############

execute store result score #mywar.homebase_x mywar.dummy run data get entity @s Pos[0] 1
execute store result score #mywar.homebase_y mywar.dummy run data get entity @s Pos[1] 1
execute store result score #mywar.homebase_z mywar.dummy run data get entity @s Pos[2] 1
