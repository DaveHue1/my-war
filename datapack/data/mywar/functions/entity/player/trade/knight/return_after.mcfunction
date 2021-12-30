######
#Return extra archer items
#Author: DaveHue
######

give @s structure_block{display:{Name:'{"text":"Money","color":"yellow","bold":false,"italic":false}'},CustomModelData:1,mywar.currency:1b,mywar.item:1b} 6
scoreboard players remove #mywar.temp.knight mywar.dummy 1
execute if score #mywar.temp.knight mywar.dummy matches 1.. run function mywar:entity/player/trade/knight/return_after