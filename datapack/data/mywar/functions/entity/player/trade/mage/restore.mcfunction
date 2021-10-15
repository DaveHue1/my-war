#####
#Restore foot soldier
#Author: DaveHue
#####

#Store mage items
execute store result score #mywar.temp.mage mywar.dummy run clear @s minecraft:structure_void{mywar.mage:1b}

#Return mage items
execute if score #mywar.temp.mage mywar.dummy matches 1.. run function mywar:entity/player/trade/mage/return

#Reset score
#scoreboard players reset #mywar.temp.mage mywar.dummy

