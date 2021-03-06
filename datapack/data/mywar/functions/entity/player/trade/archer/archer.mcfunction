#####
#Store archer amount
#Author: Dave Hue
#####

#Store amount of items
execute store result score #mywar.temp.archer mywar.dummy run clear @s minecraft:structure_void{mywar.archer:1b}

#Add it to stack
scoreboard players operation @s mywar.cl += #mywar.temp.archer mywar.dummy
scoreboard players operation @s mywar.c_archer += #mywar.temp.archer mywar.dummy

scoreboard players operation #mywar.archer_restore_temp_1 mywar.dummy = @s mywar.c_archer
scoreboard players operation #mywar.archer_restore_temp_2 mywar.dummy = #mywar.global_soldier_limit mywar.dummy
scoreboard players operation #mywar.archer_restore_temp_3 mywar.dummy = @s mywar.cl

execute if score @s mywar.c_archer >= #mywar.global_soldier_limit mywar.dummy run execute store result score @s mywar.archer_restore run scoreboard players operation #mywar.archer_restore_temp_1 mywar.dummy -= #mywar.archer_restore_temp_2 mywar.dummy
execute if score @s mywar.cl >= #mywar.global_soldier_limit mywar.dummy run execute store result score @s mywar.archer_restore run scoreboard players operation #mywar.archer_restore_temp_3 mywar.dummy -= #mywar.archer_restore_temp_2 mywar.dummy
scoreboard players operation #mywar.temp.archer mywar.dummy -= @s mywar.archer_restore
scoreboard players operation @s mywar.c_archer -= @s mywar.archer_restore

execute if score @s mywar.cl >= #mywar.global_soldier_limit mywar.dummy run scoreboard players operation @s mywar.cl = #mywar.global_soldier_limit mywar.dummy
execute if score @s mywar.c_archer >= #mywar.global_soldier_limit mywar.dummy run scoreboard players operation @s mywar.c_archer = #mywar.global_soldier_limit mywar.dummy

#Return extra items
execute if score @s mywar.archer_restore matches 1.. run function mywar:entity/player/trade/archer/return_before

#Message 
tellraw @s {"translate":"mywar.message.player.trade.added","with":[{"score":{"name":"#mywar.temp.archer","objective":"mywar.dummy"},"color":"aqua"},{"translate":"mywar.message.player.trade.added.archers","color":"aqua"}],"color":"aqua"}

#Reset score
scoreboard players set #mywar.temp.archer mywar.dummy 0
scoreboard players reset @s mywar.archer_restore
scoreboard players reset #mywar.archer_restore_temp_1 mywar.dummy
scoreboard players reset #mywar.archer_restore_temp_2 mywar.dummy
scoreboard players reset #mywar.archer_restore_temp_3 mywar.dummy