#####
#Store foot soldier amount
#Author: Dave Hue
#####

#Store amount of items
execute store result score #mywar.temp.swordsmen mywar.dummy run clear @s minecraft:structure_void{mywar.swordsmen:1b}

#Add it to stack
scoreboard players operation @s mywar.cl += #mywar.temp.swordsmen mywar.dummy
scoreboard players operation @s mywar.c_sm += #mywar.temp.swordsmen mywar.dummy
execute if score @s mywar.cl matches 100.. run scoreboard players set @s mywar.cl 100
execute if score @s mywar.c_sm matches 100.. run scoreboard players set @s mywar.c_sm 100

#Message 
tellraw @s [{"text":"Added","color":"aqua","italic":false},{"text":" "},{"score":{"name":"#mywar.temp.swordsmen","objective":"mywar.dummy"},"color":"aqua","italic":false},{"text":" "},{"text":"swordsmen","color":"aqua","italic":false}]

#Reset score
scoreboard players set #mywar.temp.swordsmen mywar.dummy 0