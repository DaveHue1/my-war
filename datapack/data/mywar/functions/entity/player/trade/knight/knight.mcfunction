#####
#Store knight amount
#Author: Dave Hue
#####

#Store amount of items
execute store result score #mywar.temp.knight mywar.dummy run clear @s minecraft:structure_void{mywar.knight:1b}

#Add it to stack
scoreboard players operation @s mywar.cl += #mywar.temp.knight mywar.dummy
scoreboard players operation @s mywar.c_knight += #mywar.temp.knight mywar.dummy

scoreboard players operation #mywar.knight_restore_temp_1 mywar.dummy = @s mywar.c_knight
scoreboard players operation #mywar.knight_restore_temp_2 mywar.dummy = #mywar.global_soldier_limit mywar.dummy
scoreboard players operation #mywar.knight_restore_temp_3 mywar.dummy = @s mywar.cl

execute if score @s mywar.c_knight >= #mywar.global_soldier_limit mywar.dummy run execute store result score @s mywar.knight_restore run scoreboard players operation #mywar.knight_restore_temp_1 mywar.dummy -= #mywar.knight_restore_temp_2 mywar.dummy
execute if score @s mywar.cl >= #mywar.global_soldier_limit mywar.dummy run execute store result score @s mywar.knight_restore run scoreboard players operation #mywar.knight_restore_temp_3 mywar.dummy -= #mywar.knight_restore_temp_2 mywar.dummy
scoreboard players operation #mywar.temp.knight mywar.dummy -= @s mywar.knight_restore
scoreboard players operation @s mywar.c_knight -= @s mywar.knight_restore

execute if score @s mywar.cl >= #mywar.global_soldier_limit mywar.dummy run scoreboard players operation @s mywar.cl = #mywar.global_soldier_limit mywar.dummy
execute if score @s mywar.c_knight >= #mywar.global_soldier_limit mywar.dummy run scoreboard players operation @s mywar.c_knight = #mywar.global_soldier_limit mywar.dummy

#Return extra items
execute if score @s mywar.knight_restore matches 1.. run function mywar:entity/player/trade/knight/return_before

#Message 
tellraw @s {"translate":"mywar.message.player.trade.added","with":[{"score":{"name":"#mywar.temp.knight","objective":"mywar.dummy"},"color":"aqua"},{"translate":"mywar.message.player.trade.added.knights","color":"aqua"}],"color":"aqua"}

#Reset score
scoreboard players set #mywar.temp.knight mywar.dummy 0
scoreboard players reset @s mywar.knight_restore
scoreboard players reset #mywar.knight_restore_temp_1 mywar.dummy
scoreboard players reset #mywar.knight_restore_temp_2 mywar.dummy
scoreboard players reset #mywar.knight_restore_temp_3 mywar.dummy