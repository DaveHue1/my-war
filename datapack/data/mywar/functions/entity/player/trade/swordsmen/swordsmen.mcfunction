#####
#Store foot soldier amount
#Author: Dave Hue
#####

#Store amount of items
execute store result score #mywar.temp.swordsmen mywar.dummy run clear @s minecraft:structure_void{mywar.swordsmen:1b}

#Add it to stack
scoreboard players operation @s mywar.cl += #mywar.temp.swordsmen mywar.dummy
scoreboard players operation @s mywar.c_sm += #mywar.temp.swordsmen mywar.dummy
execute if score @s mywar.cl >= #mywar.global_soldier_limit mywar.dummy run scoreboard players operation @s mywar.cl = #mywar.global_soldier_limit mywar.dummy
execute if score @s mywar.c_sm >= #mywar.global_soldier_limit mywar.dummy run scoreboard players operation @s mywar.c_sm = #mywar.global_soldier_limit mywar.dummy

#Message 
tellraw @s [{"text":"Added","color":"aqua","italic":false},{"text":" "},{"score":{"name":"#mywar.temp.swordsmen","objective":"mywar.dummy"},"color":"aqua","italic":false},{"text":" "},{"text":"swordsmen","color":"aqua","italic":false}]

#Reset score
scoreboard players set #mywar.temp.swordsmen mywar.dummy 0