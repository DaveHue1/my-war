########
#Spreads soldiers around the player
#Author: DaveHue
########

#Sets spread level
execute unless predicate mywar:player/sneaking run function mywar:commands/spread/spread_level

#Spreads units 
execute if predicate mywar:player/sneaking run function mywar:commands/spread/spread_soldiers


