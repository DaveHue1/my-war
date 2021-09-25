########
#Starts the iteration of X 
#Author(s): DaveHue, CreeperMagnet
#Code used with permission
########

execute store result score @s mywar.dummy run scoreboard players get #mywar.homebase_x mywar.dummy 
execute positioned 0 0 0 run function mywar:item/commands/home_base/home_base_x
