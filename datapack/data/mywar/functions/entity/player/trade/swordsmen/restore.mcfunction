#####
#Restore foot soldier
#Author: DaveHue
#####

#Store swordsmen items
execute store result score #mywar.temp.swordsmen mywar.dummy run clear @s minecraft:structure_void{mywar.swordsmen:1b}

#Return swordsmen items
execute if score #mywar.temp.swordsmen mywar.dummy matches 1.. run function mywar:entity/player/trade/swordsmen/return

#Reset score
#scoreboard players reset #mywar.temp.swordsmen mywar.dummy

