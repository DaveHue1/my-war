#####
#Carrot on a stick functions 
#Author: DaveHue
#####

#Commands
execute if predicate mywar:commands/command_test run function mywar:item/commands/tick

#Waypoint
execute if predicate mywar:item/waypoint run function mywar:item/waypoint/waypoint_x_init

#Resets COAS score
scoreboard players set @s mywar.coas 0