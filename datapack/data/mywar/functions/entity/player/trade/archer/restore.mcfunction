#####
#Restore archer
#Author: DaveHue
#####

#Store archer items
execute store result score #mywar.temp.archer mywar.dummy run clear @s minecraft:structure_void{mywar.archer:1b}

#Return archer items
execute if score #mywar.temp.archer mywar.dummy matches 1.. run function mywar:entity/player/trade/archer/return_after

#Reset score
#scoreboard players reset #mywar.temp.archer mywar.dummy

