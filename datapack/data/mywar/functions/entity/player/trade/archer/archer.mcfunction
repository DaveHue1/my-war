#####
#Store archer amount
#Author: Dave Hue
#####

#Store amount of items
execute store result score #mywar.temp.archer mywar.dummy run clear @s minecraft:structure_void{mywar.archer:1b}

#Add it to stack
scoreboard players operation @s mywar.c_archer += #mywar.temp.archer mywar.dummy

#Message 
tellraw @s [{"text":"Added","color":"aqua","italic":false},{"text":" "},{"score":{"name":"#mywar.temp.archer","objective":"mywar.dummy"},"color":"aqua","italic":false},{"text":" "},{"text":"archers","color":"aqua","italic":false}]

#Reset score
scoreboard players reset #mywar.temp.archer mywar.dummy