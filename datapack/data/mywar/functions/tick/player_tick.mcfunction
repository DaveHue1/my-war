##########
#Ticking function for players
#Author: DaveHue
##########

#Players carrot on a stick items
execute if predicate mywar:item/carrot_on_a_stick run function mywar:item/carrot_on_a_stick

#Holding item 
execute if predicate mywar:item/holding_item run function mywar:item/holding_item

#Traded with advisor 
execute as @s[scores={mywar.traded=1..},predicate=mywar:player/trade/has_item] at @s run function mywar:entity/player/trade/decide

#Right clicked waypoint
execute as @s[scores={mywar.vrc=1..}] at @s if entity @e[type=villager,tag=mywar.wpr,distance=..10,sort=nearest,limit=1] run execute as @e[type=marker,tag=mywar.village,sort=nearest,limit=1] at @s run function mywar:entity/village/misc/waypoint_right_click

#Guide book
execute unless score @s mywar.book matches 0.. run scoreboard players enable @s mywar.book
execute if score @s mywar.book matches 1.. run function mywar:item/give/guide_book