######
#Return extra archer items
#Author: DaveHue
######

give @s structure_block{display:{Name:'{"translate":"mywar.item.name.money","color":"yellow","bold":false,"italic":false}'},CustomModelData:1,mywar.currency:1b,mywar.item:1b} 4
scoreboard players remove @s mywar.archer_restore 1
execute if score @s mywar.archer_restore matches 1.. run function mywar:entity/player/trade/archer/return_before