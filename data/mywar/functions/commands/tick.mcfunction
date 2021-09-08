########
#Runs commands items 
#Author: Dave Hue
########

#Spreads units
execute if predicate mywar:commands/spread run function mywar:commands/spread/spread

#Aggros units
execute if predicate mywar:commands/aggro run function mywar:commands/aggro/aggro

#Teleports player back to home base
execute if predicate mywar:commands/home_base run function mywar:commands/home_base/home_base

#Collects soldiers 
execute if predicate mywar:commands/collect run function mywar:commands/collect/collect

#Tax soldiers
execute if predicate mywar:commands/tax run function mywar:commands/tax/tax

#Resets COAS score
scoreboard players set @s mywar.command 0

