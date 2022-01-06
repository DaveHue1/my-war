#####
#Store mage amount
#Author: Dave Hue
#####

#Store amount of items
execute store result score #mywar.temp.mage mywar.dummy run clear @s minecraft:structure_void{mywar.mage:1b}

#Add it to stack
scoreboard players operation @s mywar.cl += #mywar.temp.mage mywar.dummy
scoreboard players operation @s mywar.c_mage += #mywar.temp.mage mywar.dummy

scoreboard players operation #mywar.mage_restore_temp_1 mywar.dummy = @s mywar.c_mage
scoreboard players operation #mywar.mage_restore_temp_2 mywar.dummy = #mywar.global_soldier_limit mywar.dummy
scoreboard players operation #mywar.mage_restore_temp_3 mywar.dummy = @s mywar.cl

execute if score @s mywar.c_mage >= #mywar.global_soldier_limit mywar.dummy run execute store result score @s mywar.mage_restore run scoreboard players operation #mywar.mage_restore_temp_1 mywar.dummy -= #mywar.mage_restore_temp_2 mywar.dummy
execute if score @s mywar.cl >= #mywar.global_soldier_limit mywar.dummy run execute store result score @s mywar.mage_restore run scoreboard players operation #mywar.mage_restore_temp_3 mywar.dummy -= #mywar.mage_restore_temp_2 mywar.dummy
scoreboard players operation #mywar.temp.mage mywar.dummy -= @s mywar.mage_restore
scoreboard players operation @s mywar.c_mage -= @s mywar.mage_restore

execute if score @s mywar.cl >= #mywar.global_soldier_limit mywar.dummy run scoreboard players operation @s mywar.cl = #mywar.global_soldier_limit mywar.dummy
execute if score @s mywar.c_mage >= #mywar.global_soldier_limit mywar.dummy run scoreboard players operation @s mywar.c_mage = #mywar.global_soldier_limit mywar.dummy

#Return extra items
execute if score @s mywar.mage_restore matches 1.. run function mywar:entity/player/trade/mage/return_before

#Message 
tellraw @s {"translate":"mywar.message.player.trade.added","with":[{"score":{"name":"#mywar.temp.mage","objective":"mywar.dummy"},"color":"aqua"},{"translate":"mywar.message.player.trade.added.mages","color":"aqua"}],"color":"aqua"}

#Reset score
scoreboard players set #mywar.temp.mage mywar.dummy 0
scoreboard players reset @s mywar.mage_restore
scoreboard players reset #mywar.mage_restore_temp_1 mywar.dummy
scoreboard players reset #mywar.mage_restore_temp_2 mywar.dummy
scoreboard players reset #mywar.mage_restore_temp_3 mywar.dummy