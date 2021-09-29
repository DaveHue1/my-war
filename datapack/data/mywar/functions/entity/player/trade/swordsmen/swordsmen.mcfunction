#####
#Store foot soldier amount
#Author: Dave Hue
#####

#Store amount of items
execute store result score #mywar.temp.swordsmen mywar.dummy run clear @s minecraft:structure_void{mywar.swordsmen:1b}

#Add it to stack
scoreboard players operation @s mywar.c_sm += #mywar.temp.swordsmen mywar.dummy

#Message 
tellraw @s [{"text":"Added","color":"aqua","italic":false},{"text":" "},{"score":{"name":"#mywar.temp.swordsmen","objective":"mywar.dummy"},"color":"aqua","italic":false},{"text":" "},{"text":"foot soldiers","color":"aqua","italic":false}]

#Reset score
scoreboard players reset #mywar.temp.swordsmen mywar.dummy