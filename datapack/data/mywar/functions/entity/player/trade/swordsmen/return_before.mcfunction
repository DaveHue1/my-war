######
#Return extra archer items
#Author: DaveHue
######

give @s structure_block{display:{Name:'{"text":"Money","color":"yellow","bold":false,"italic":false}'},CustomModelData:1,mywar.currency:1b,mywar.item:1b} 2
scoreboard players remove @s mywar.sm_restore 1
execute if score @s mywar.sm_restore matches 1.. run function mywar:entity/player/trade/swordsmen/return_before