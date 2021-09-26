#####
#Store foot soldier amount
#Author: Dave Hue
#####

#Store amount of items
execute store result score #mywar.temp.foot_soldier mywar.dummy run clear @s minecraft:structure_void{mywar.foot_soldier:1b}

#Add it to stack
scoreboard players operation @s mywar.c_fs_i += #mywar.temp.foot_soldier mywar.dummy

#Message 
tellraw @s [{"text":"Added","color":"aqua","italic":false},{"text":" "},{"score":{"name":"#mywar.temp.foot_soldier","objective":"mywar.dummy"},"color":"aqua","italic":false},{"text":" "},{"text":"foot soldiers","color":"aqua","italic":false}]

#Reset score
scoreboard players reset #mywar.temp.foot_soldier mywar.dummy