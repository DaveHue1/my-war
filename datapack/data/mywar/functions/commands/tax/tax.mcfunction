#####
#Tax villages
#Author: Dave Hue
#####

#Stores conquered villages
execute store result score #mywar.tax mywar.dummy run scoreboard players get #mywar.current_conquest_level mywar.dummy

#Taxes
execute if score @s mywar.tax_limit matches 0 run function mywar:commands/tax/iter
execute if score @s mywar.tax_limit matches 1.. run tellraw @s {"text":"Cooldown for 30 seconds!","color":"red"}