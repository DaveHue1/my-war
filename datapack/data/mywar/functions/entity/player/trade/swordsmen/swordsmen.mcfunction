#####
#Store swordsmen amount
#Author: Dave Hue
#####

#Store amount of items
execute store result score #mywar.temp.swordsmen mywar.dummy run clear @s minecraft:structure_void{mywar.swordsmen:1b}

#Add it to stack
scoreboard players operation @s mywar.cl += #mywar.temp.swordsmen mywar.dummy
scoreboard players operation @s mywar.c_sm += #mywar.temp.swordsmen mywar.dummy

scoreboard players operation #mywar.sm_restore_temp_1 mywar.dummy = @s mywar.c_sm
scoreboard players operation #mywar.sm_restore_temp_2 mywar.dummy = #mywar.global_soldier_limit mywar.dummy
scoreboard players operation #mywar.sm_restore_temp_3 mywar.dummy = @s mywar.cl

execute if score @s mywar.c_sm >= #mywar.global_soldier_limit mywar.dummy run execute store result score @s mywar.sm_restore run scoreboard players operation #mywar.sm_restore_temp_1 mywar.dummy -= #mywar.sm_restore_temp_2 mywar.dummy
execute if score @s mywar.cl >= #mywar.global_soldier_limit mywar.dummy run execute store result score @s mywar.sm_restore run scoreboard players operation #mywar.sm_restore_temp_3 mywar.dummy -= #mywar.sm_restore_temp_2 mywar.dummy
scoreboard players operation #mywar.temp.sm mywar.dummy -= @s mywar.sm_restore
scoreboard players operation @s mywar.c_sm -= @s mywar.sm_restore

execute if score @s mywar.cl >= #mywar.global_soldier_limit mywar.dummy run scoreboard players operation @s mywar.cl = #mywar.global_soldier_limit mywar.dummy
execute if score @s mywar.c_sm >= #mywar.global_soldier_limit mywar.dummy run scoreboard players operation @s mywar.c_sm = #mywar.global_soldier_limit mywar.dummy

#Return extra items
execute if score @s mywar.sm_restore matches 1.. run function mywar:entity/player/trade/swordsmen/return_before

#Message 
tellraw @s {"translate":"mywar.message.player.trade.added","with":[{"score":{"name":"#mywar.temp.swordsmen","objective":"mywar.dummy"},"color":"aqua"},{"translate":"mywar.message.player.trade.added.swordsmen","color":"aqua"}],"color":"aqua"}

#Reset score
scoreboard players set #mywar.temp.swordsmen mywar.dummy 0
scoreboard players reset @s mywar.sm_restore
scoreboard players reset #mywar.sm_restore_temp_1 mywar.dummy
scoreboard players reset #mywar.sm_restore_temp_2 mywar.dummy
scoreboard players reset #mywar.sm_restore_temp_3 mywar.dummy