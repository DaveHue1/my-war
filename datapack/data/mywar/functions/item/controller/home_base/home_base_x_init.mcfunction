########
#Starts the iteration of X 
#Author(s): DaveHue, CreeperMagnet
#Code used with permission
########

execute if predicate mywar:controller/controller_test run execute store result score @s mywar.dummy run scoreboard players get @s mywar.homebase_x 
execute if predicate mywar:item/waypoint run execute store result score @s mywar.dummy run data get entity @s SelectedItem.tag.Pos[0]
execute positioned 0 0 0 run function mywar:item/controller/home_base/home_base_x
