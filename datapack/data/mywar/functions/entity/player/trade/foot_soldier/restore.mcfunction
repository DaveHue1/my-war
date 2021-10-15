#####
#Restore foot soldier
#Author: DaveHue
#####

#Store foot_soldier items
execute store result score #mywar.temp.foot_soldier mywar.dummy run clear @s minecraft:structure_void{mywar.foot_soldier:1b}

#Return foot_soldier items
execute if score #mywar.temp.foot_soldier mywar.dummy matches 1.. run function mywar:entity/player/trade/foot_soldier/return

#Reset score
#scoreboard players reset #mywar.temp.foot_soldier mywar.dummy

