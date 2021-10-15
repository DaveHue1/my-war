#####
#Store foot soldier amount
#Author: Dave Hue
#####

#Store amount of items
execute store result score #mywar.temp.knight mywar.dummy run clear @s minecraft:structure_void{mywar.knight:1b}

#Add it to stack
scoreboard players operation @s mywar.cl += #mywar.temp.knight mywar.dummy
scoreboard players operation @s mywar.c_knight += #mywar.temp.knight mywar.dummy
execute if score @s mywar.cl matches 100.. run scoreboard players set @s mywar.cl 100
execute if score @s mywar.c_knight matches 100.. run scoreboard players set @s mywar.c_knight 100

#Message 
tellraw @s [{"text":"Added","color":"aqua","italic":false},{"text":" "},{"score":{"name":"#mywar.temp.knight","objective":"mywar.dummy"},"color":"aqua","italic":false},{"text":" "},{"text":"knights","color":"aqua","italic":false}]

#Reset score
scoreboard players set #mywar.temp.knight mywar.dummy 0