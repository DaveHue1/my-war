#####
#Restore foot soldier
#Author: DaveHue
#####

#Store knight items
execute store result score #mywar.temp.knight mywar.dummy run clear @s minecraft:structure_void{mywar.knight:1b}

#Return knight items
execute if score #mywar.temp.knight mywar.dummy matches 1.. run function mywar:entity/player/trade/knight/return_after

#Reset score
#scoreboard players reset #mywar.temp.knight mywar.dummy

