#####
#Replenish soldiers in village
#Author: Dave Hue
#####

#Replenish
execute as @e[type=marker,tag=mywar.village] at @s run function mywar:technical/clocks/village/replenish/decide

#Reset timer
scoreboard players set #mywar.replenish mywar.dummy 0