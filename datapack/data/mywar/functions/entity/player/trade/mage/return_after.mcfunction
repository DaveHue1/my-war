######
#Return extra archer items
#Author: DaveHue
######

give @s ink_sac{display:{Name:'{"text":"Money","color":"yellow","bold":true,"italic":false}'},CustomModelData:1,mywar.currency:1b,mywar.item:1b} 2
scoreboard players remove #mywar.temp.foot_soldier mywar.dummy 1
execute if score #mywar.temp.foot_soldier mywar.dummy matches 1.. run function mywar:entity/player/trade/foot_soldier/return_after