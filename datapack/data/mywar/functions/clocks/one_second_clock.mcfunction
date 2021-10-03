######
#One second clock
#Author: DaveHue
######

#Village
execute as @e[type=marker,tag=mywar.village,tag=mywar.village_done,tag=!mywar.village_captured] at @s run function mywar:entity/village/capture/capture

execute as @e[type=marker,tag=mywar.village,tag=mywar.village_done,tag=!mywar.village_set] at @s if entity @a[distance=..200] run function mywar:entity/village/set

#Tax limit
scoreboard players remove @a[scores={mywar.tax_limit=1..}] mywar.tax_limit 1 

#Mage
scoreboard players add #mywar.mage_fight mywar.dummy 1

execute if score #mywar.mage_fight mywar.dummy matches 3.. run execute as @e[tag=mywar.soldier,tag=mywar.mage] at @s if entity @s[team=mywar.friendly] if entity @e[team=mywar.enemy,distance=..5] run function mywar:entity/mage/fight 
execute if score #mywar.mage_fight mywar.dummy matches 3.. run execute as @e[tag=mywar.soldier,tag=mywar.mage] at @s if entity @s[team=mywar.enemy] if entity @e[team=mywar.friendly,distance=..5] run function mywar:entity/mage/fight 

execute if score #mywar.mage_fight mywar.dummy matches 3.. run scoreboard players reset #mywar.mage_fight mywar.dummy

#Teams for villagers
execute as @e[type=villager,team=!mywar.friendly] at @s run team join mywar.enemy @s

schedule function mywar:clocks/one_second_clock 1s
