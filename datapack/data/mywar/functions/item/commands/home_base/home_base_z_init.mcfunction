
########
#Starts the iteration of Z 
#Author(s): DaveHue, CreeperMagnet
#Code used with permission
########

execute if predicate mywar:item/home_base run execute store result score @s mywar.dummy run scoreboard players get #mywar.homebase_z mywar.dummy 
execute if predicate mywar:item/waypoint run execute store result score @s mywar.dummy run data get entity @s SelectedItem.tag.Pos[2]
function mywar:item/commands/home_base/home_base_z
