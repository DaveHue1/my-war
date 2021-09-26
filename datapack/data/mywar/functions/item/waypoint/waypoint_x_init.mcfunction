########
#Starts the iteration of X 
#Author(s): DaveHue, CreeperMagnet
#Code used with permission
########

execute store result score @s mywar.dummy run data get entity @s SelectedItem.tag.Pos[0]
execute positioned 0 0 0 run function mywar:item/waypoint/waypoint_x
