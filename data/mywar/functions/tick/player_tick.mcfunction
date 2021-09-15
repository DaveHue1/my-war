##########
#Ticking function for players
#Author: DaveHue
##########

#Players executing command items
execute if predicate mywar:commands/command_test run function mywar:commands/tick

#Holding item 
execute if predicate mywar:holding_item run function mywar:item/holding_item
