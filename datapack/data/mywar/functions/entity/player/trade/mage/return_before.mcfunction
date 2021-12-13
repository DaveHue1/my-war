######
#Return extra archer items
#Author: DaveHue
######

give @s ink_sac{display:{Name:'{"text":"Money","color":"yellow","bold":true,"italic":false}'},CustomModelData:1,mywar.currency:1b,mywar.item:1b} 2
scoreboard players remove @s mywar.mage_restore 1
execute if score @s mywar.mage_restore matches 1.. run function mywar:entity/player/trade/mage/return_before