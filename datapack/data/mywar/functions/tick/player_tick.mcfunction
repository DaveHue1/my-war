##########
#Ticking function for players
#Author: DaveHue
##########

#Players carrot on a stick items
execute if predicate mywar:item/carrot_on_a_stick run function mywar:item/carrot_on_a_stick

#Holding item 
execute if predicate mywar:item/holding_item run function mywar:item/holding_item

#Traded with advisor 
execute as @s[scores={mywar.traded=1..}] if entity @e[type=villager,tag=mywar.entity,tag=mywar.advisor,distance=..10,sort=nearest,limit=1] run function mywar:entity/player/trade/trade
