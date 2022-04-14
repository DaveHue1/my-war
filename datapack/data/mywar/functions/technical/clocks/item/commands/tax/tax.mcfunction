######
#Clock functions for tax command item
#Author: DaveHue
######

#Adds to the player's tax timer 
scoreboard players add #mywar.tax_timer mywar.dummy 1
scoreboard players set #mywar.tax_timer_left mywar.dummy 30
execute store result score #mywar.tax_timer_left2 mywar.dummy run scoreboard players operation #mywar.tax_timer_left mywar.dummy -= #mywar.tax_timer mywar.dummy 

#If the tax timer matches 30 seconds, add to the player's collection limit
execute if score #mywar.tax_timer mywar.dummy matches 30.. run execute as @a[scores={mywar.current_conquest_level=1..,mywar.tax_collection_limit=..8}] run scoreboard players add @s mywar.tax_collection_limit 1

#Resets tax timer after 30 seconds 
execute if score #mywar.tax_timer mywar.dummy matches 30.. run scoreboard players set #mywar.tax_timer mywar.dummy 0

