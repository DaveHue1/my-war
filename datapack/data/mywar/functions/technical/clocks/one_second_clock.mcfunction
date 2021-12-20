######
#One second clock
#Author: DaveHue
######

#Village
execute as @e[type=marker,tag=mywar.village,tag=mywar.village_done,limit=1] at @s run function mywar:technical/clocks/village/done

#Tax limit
function mywar:technical/clocks/item/commands/tax/tax 

#Mage
scoreboard players add #mywar.mage_fight mywar.dummy 1

execute if score #mywar.mage_fight mywar.dummy matches 3.. run function mywar:technical/clocks/entity/mage/mage

schedule function mywar:technical/clocks/one_second_clock 1s replace
