#####
#Iterating through taxes
#Author: Dave Hue
#####

#Money
give @a ink_sac{display:{Name:'{"text":"Money","color":"yellow","bold":true,"italic":false}'},CustomModelData:1,mywar.currency:1b,mywar.item:1b} 20

#Score
scoreboard players remove #mywar.tax mywar.dummy 1

#Taxes
execute if score #mywar.tax mywar.dummy matches 0 run scoreboard players set @s mywar.tax_limit 30 
execute if score #mywar.tax mywar.dummy matches 1.. run function mywar:item/commands/tax/iter