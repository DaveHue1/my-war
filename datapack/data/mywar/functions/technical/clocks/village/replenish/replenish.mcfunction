#####
#Replenish soldiers in village
#Author: Dave Hue
#####

#Replenish
execute as @e[type=marker,tag=mywar.village,tag=mywar.village_done,limit=1] at @s run function mywar:technical/clocks/village/replenish/decide

#Reset timer
scoreboard players set #mywar.replenish mywar.dummy 0