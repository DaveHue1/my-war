############
#Sets the home coordinates of the nearest player
#Author: DaveHue
############

execute store result score @a[sort=nearest,limit=1] mywar.homebase_x run data get entity @e[type=marker,tag=mywar.home_base,sort=nearest,limit=1] Pos[0] 1
execute store result score @a[sort=nearest,limit=1] mywar.homebase_y run data get entity @e[type=marker,tag=mywar.home_base,sort=nearest,limit=1] Pos[1] 1
execute store result score @a[sort=nearest,limit=1] mywar.homebase_z run data get entity @e[type=marker,tag=mywar.home_base,sort=nearest,limit=1] Pos[2] 1
