#####
#Tax villages
#Author: Dave Hue
#####

#Stores conquered villages
execute store result score #mywar.tax mywar.dummy run scoreboard players get #mywar.current_conquest_level mywar.dummy

#Tax score
execute unless score @s mywar.tax_limit matches 0.. run scoreboard players set @s mywar.tax_limit 0

#Taxes
execute if score @s mywar.tax_limit matches 0 if score #mywar.tax mywar.dummy matches 1.. run function mywar:item/commands/tax/iter
execute if score @s mywar.tax_limit matches 1.. run tellraw @s [{"score":{"name":"*","objective":"mywar.tax_limit"},"color":"red","italic":false},{"text":" "},{"text":"second cooldown!","color":"red","italic":false}]