#####
#Stuff for mage
#Author: Dave Hue
#####

execute as @e[tag=mywar.soldier,tag=mywar.mage,team=mywar.enemy] at @s if entity @e[tag=mywar.universal,team=!mywar.enemy,distance=..5] run function mywar:entity/mage/fight
execute as @e[tag=mywar.soldier,tag=mywar.mage,team=mywar.red] at @s if entity @e[tag=mywar.universal,team=!mywar.red,distance=..5] run function mywar:entity/mage/fight 
execute as @e[tag=mywar.soldier,tag=mywar.mage,team=mywar.blue] at @s if entity @e[tag=mywar.universal,team=!mywar.blue,distance=..5] run function mywar:entity/mage/fight 
execute as @e[tag=mywar.soldier,tag=mywar.mage,team=mywar.yellow] at @s if entity @e[tag=mywar.universal,team=!mywar.yellow,distance=..5] run function mywar:entity/mage/fight 
execute as @e[tag=mywar.soldier,tag=mywar.mage,team=mywar.green] at @s if entity @e[tag=mywar.universal,team=!mywar.green,distance=..5] run function mywar:entity/mage/fight 

scoreboard players reset #mywar.mage_fight mywar.dummy