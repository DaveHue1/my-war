######
#Return extra knight items
#Author: DaveHue
######

give @s ink_sac{display:{Name:'{"text":"Money","color":"yellow","bold":true,"italic":false}'},CustomModelData:1,mywar.currency:1b,mywar.item:1b} 6
scoreboard players remove #mywar.temp.knight mywar.dummy 1
execute if score #mywar.temp.knight mywar.dummy matches 1.. run function mywar:entity/player/trade/knight/return