#####
#Store foot soldier amount
#Author: Dave Hue
#####

#Store amount of items
execute store result score #mywar.temp.brute mywar.dummy run clear @s minecraft:structure_void{mywar.brute:1b}

#Add it to stack
scoreboard players operation @s mywar.c_brute += #mywar.temp.brute mywar.dummy

#Message 
tellraw @s [{"text":"Added","color":"aqua","italic":false},{"text":" "},{"score":{"name":"#mywar.temp.brute","objective":"mywar.dummy"},"color":"aqua","italic":false},{"text":" "},{"text":"brutes","color":"aqua","italic":false}]

#Reset score
scoreboard players reset #mywar.temp.brute mywar.dummy