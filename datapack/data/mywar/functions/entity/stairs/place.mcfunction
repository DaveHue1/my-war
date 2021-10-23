######
#Place stairs
#Author: Dave Hue
######

#Placement
tp @s ~ ~-1 ~1 
fill ~-17 ~-1 ~1 ~17 ~-1 ~1 stone_brick_stairs[facing=north]

#Scoreboard
scoreboard players remove @s mywar.stairs 1

#Repeat
execute if score @s mywar.stairs matches 1.. run function mywar:entity/stairs/place

