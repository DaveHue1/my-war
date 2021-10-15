#####
#Store archer amount
#Author: Dave Hue
#####

#Store amount of items
execute store result score #mywar.temp.archer mywar.dummy run clear @s minecraft:structure_void{mywar.archer:1b}

#Add it to stack
scoreboard players operation @s mywar.cl += #mywar.temp.archer mywar.dummy
scoreboard players operation @s mywar.c_archer += #mywar.temp.archer mywar.dummy
execute if score @s mywar.cl matches 100.. run scoreboard players set @s mywar.cl 100
execute if score @s mywar.c_archer matches 100.. run scoreboard players set @s mywar.c_archer 100

#Message 
tellraw @s [{"text":"Added","color":"aqua","italic":false},{"text":" "},{"score":{"name":"#mywar.temp.archer","objective":"mywar.dummy"},"color":"aqua","italic":false},{"text":" "},{"text":"archers","color":"aqua","italic":false}]

#Reset score
scoreboard players set #mywar.temp.archer mywar.dummy 0