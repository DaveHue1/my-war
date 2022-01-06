#####
#Carrot on a stick functions 
#Author: DaveHue
#####

#Commands
execute if predicate mywar:controller/controller_test run function mywar:item/controller/tick

#Waypoint
execute if predicate mywar:item/waypoint run function mywar:item/controller/home_base/home_base_x_init

#Resets COAS score
scoreboard players set @s mywar.coas 0

#Revoke advancement
advancement revoke @s only mywar:item/carrot_on_a_stick