########
#Runs commands items 
#Author: Dave Hue
########

#Deploys units
execute if predicate mywar:commands/deploy run function mywar:item/commands/deploy/deploy

#Spreads units
execute if predicate mywar:commands/spread run function mywar:item/commands/spread/spread

#Aggros units
execute if predicate mywar:commands/aggro run function mywar:item/commands/aggro/aggro

#Teleports player back to home base
execute if predicate mywar:commands/home_base run function mywar:item/commands/home_base/home_base_x_init

#Collects soldiers 
execute if predicate mywar:commands/collect run function mywar:item/commands/collect/collect

#Tax soldiers
execute if predicate mywar:commands/tax run function mywar:item/commands/tax/tax



