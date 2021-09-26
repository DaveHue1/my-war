########
#Starts the iteration of Y
#Author(s): DaveHue, CreeperMagnet
#Code used with permission
########

execute if predicate mywar:item/home_base run execute store result score @s mywar.dummy run scoreboard players get #mywar.homebase_y mywar.dummy 
execute if predicate mywar:item/waypoint run execute store result score @s mywar.dummy run data get entity @s SelectedItem.tag.Pos[1]

function mywar:item/commands/home_base/home_base_y
