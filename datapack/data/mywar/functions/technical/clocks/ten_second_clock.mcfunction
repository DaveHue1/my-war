#####
#Ten second clock
#Author: Dave Hue
#####

#Aggros soldiers if player is near 
execute as @e[tag=mywar.village,tag=mywar.entity] at @s run function mywar:technical/clocks/village/aggro

#Replenish mobs
scoreboard players add #mywar.replenish mywar.dummy 1

execute if score #mywar.replenish mywar.dummy matches 6.. run function mywar:technical/clocks/village/replenish/replenish

#Resets clock
schedule function mywar:technical/clocks/ten_second_clock 10s replace
