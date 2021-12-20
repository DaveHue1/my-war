#####
#Iterating through taxes
#Author: Dave Hue
#####

#Money
give @a structure_block{display:{Name:'{"text":"Money","color":"yellow","bold":false,"italic":false}'},CustomModelData:1,mywar.currency:1b,mywar.item:1b} 5

#Removes tax number
scoreboard players remove @s mywar.tax_number 1

#Resets timer 
scoreboard players set #mywar.tax_timer mywar.dummy 0

#Taxes
execute if score @s mywar.tax_number matches 1.. run function mywar:item/commands/tax/iter