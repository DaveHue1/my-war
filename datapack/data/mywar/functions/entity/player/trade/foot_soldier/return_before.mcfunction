######
#Return extra archer items
#Author: DaveHue
######

give @s structure_block{display:{Name:'{"translate":"mywar.item.name.money","color":"yellow","bold":false,"italic":false}'},CustomModelData:1,mywar.currency:1b,mywar.item:1b} 2
scoreboard players remove @s mywar.fs_restore 1
execute if score @s mywar.fs_restore matches 1.. run function mywar:entity/player/trade/foot_soldier/return_before