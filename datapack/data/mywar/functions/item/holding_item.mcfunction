#########
#Detects what items the player is holding 
#Author: DaveHue
#########

#Detects if holding village tracker 
execute if predicate mywar:item/village_tracker/village_tracker if predicate mywar:player/sneaking run function mywar:item/village_tracker/village_tracker

#Revoke advancement 
advancement revoke @s only mywar:item/holding_item