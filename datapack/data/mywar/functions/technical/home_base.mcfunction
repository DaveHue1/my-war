############
#Sets the global home coordinates 
#Author: DaveHue
############

execute store result score #mywar.homebase_x mywar.dummy run data get entity @e[type=marker,tag=mywar.teleport,sort=nearest,limit=1] Pos[0] 1
execute store result score #mywar.homebase_y mywar.dummy run data get entity @e[type=marker,tag=mywar.teleport,sort=nearest,limit=1] Pos[1] 1
execute store result score #mywar.homebase_z mywar.dummy run data get entity @e[type=marker,tag=mywar.teleport,sort=nearest,limit=1] Pos[2] 1
