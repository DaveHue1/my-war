#####
#Store foot soldier amount
#Author: Dave Hue
#####

#Store amount of items
execute store result score #mywar.temp.foot_soldier mywar.dummy run clear @s minecraft:structure_void{mywar.foot_soldier:1b}

#Add it to stack
scoreboard players operation @s mywar.cl += #mywar.temp.foot_soldier mywar.dummy
scoreboard players operation @s mywar.c_fs_i += #mywar.temp.foot_soldier mywar.dummy

scoreboard players operation #mywar.fs_restore_temp_1 mywar.dummy = @s mywar.c_fs_i
scoreboard players operation #mywar.fs_restore_temp_2 mywar.dummy = #mywar.global_soldier_limit mywar.dummy
scoreboard players operation #mywar.fs_restore_temp_3 mywar.dummy = @s mywar.cl

execute if score @s mywar.c_fs_i >= #mywar.global_soldier_limit mywar.dummy run execute store result score @s mywar.fs_restore run scoreboard players operation #mywar.fs_restore_temp_1 mywar.dummy -= #mywar.fs_restore_temp_2 mywar.dummy
execute if score @s mywar.cl >= #mywar.global_soldier_limit mywar.dummy run execute store result score @s mywar.fs_restore run scoreboard players operation #mywar.fs_restore_temp_3 mywar.dummy -= #mywar.fs_restore_temp_2 mywar.dummy
scoreboard players operation #mywar.temp.foot_soldier mywar.dummy -= @s mywar.fs_restore
scoreboard players operation @s mywar.c_fs_i -= @s mywar.fs_restore

execute if score @s mywar.cl >= #mywar.global_soldier_limit mywar.dummy run scoreboard players operation @s mywar.cl = #mywar.global_soldier_limit mywar.dummy
execute if score @s mywar.c_fs_i >= #mywar.global_soldier_limit mywar.dummy run scoreboard players operation @s mywar.c_fs_i = #mywar.global_soldier_limit mywar.dummy

#Return extra items
execute if score @s mywar.fs_restore matches 1.. run function mywar:entity/player/trade/foot_soldier/return_before

#Message 
tellraw @s [{"text":"Added","color":"aqua","italic":false},{"text":" "},{"score":{"name":"#mywar.temp.foot_soldier","objective":"mywar.dummy"},"color":"aqua","italic":false},{"text":" "},{"text":"foot soldiers","color":"aqua","italic":false}]

#Reset score
scoreboard players set #mywar.temp.foot_soldier mywar.dummy 0
scoreboard players reset @s mywar.fs_restore
scoreboard players reset #mywar.fs_restore_temp_1 mywar.dummy
scoreboard players reset #mywar.fs_restore_temp_2 mywar.dummy
scoreboard players reset #mywar.fs_restore_temp_3 mywar.dummy