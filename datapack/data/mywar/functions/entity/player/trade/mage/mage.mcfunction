#####
#Store mage amount
#Author: Dave Hue
#####

#Store amount of items
execute store result score #mywar.temp.mage mywar.dummy run clear @s minecraft:structure_void{mywar.mage:1b}

#Add it to stack
scoreboard players operation @s mywar.cl += #mywar.temp.mage mywar.dummy
scoreboard players operation @s mywar.c_mage += #mywar.temp.mage mywar.dummy
execute if score @s mywar.cl >= #mywar.global_soldier_limit mywar.dummy run scoreboard players operation @s mywar.cl = #mywar.global_soldier_limit mywar.dummy
execute if score @s mywar.c_mage >= #mywar.global_soldier_limit mywar.dummy run scoreboard players operation @s mywar.c_mage = #mywar.global_soldier_limit mywar.dummy

#Message 
tellraw @s [{"text":"Added","color":"aqua","italic":false},{"text":" "},{"score":{"name":"#mywar.temp.mage","objective":"mywar.dummy"},"color":"aqua","italic":false},{"text":" "},{"text":"mages","color":"aqua","italic":false}]

#Reset score
scoreboard players set #mywar.temp.mage mywar.dummy 0