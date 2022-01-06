#####
#Tax villages
#Author: Dave Hue
#####

#Plays sound 
playsound minecraft:block.note_block.bass master @s ~ ~ ~

#Stores the number to get money from
scoreboard players operation #mywar.tax_collection_limit_temp mywar.dummy = @s mywar.tax_collection_limit
execute store result score @s mywar.tax_number run scoreboard players operation @s mywar.tax_collection_limit *= @s mywar.current_conquest_level
scoreboard players operation @s mywar.tax_collection_limit = #mywar.tax.collection_limit_temp mywar.dummy
scoreboard players set @s mywar.tax_collection_limit 0

#Iterates through the tax number to get the appropriate amount of money
execute if score @s mywar.tax_number matches 1.. run tellraw @s {"translate":"mywar.message.player.tax.taxed_villages","color":"green"}
execute unless score @s mywar.tax_number matches 1.. run tellraw @s {"translate":"mywar.message.player.tax.no_money","with":[{"score":{"name":"#mywar.tax_timer_left2","objective":"mywar.dummy"},"color":"green"}],"color":"yellow"}
execute if score @s mywar.tax_number matches 1.. run function mywar:item/controller/tax/iter


