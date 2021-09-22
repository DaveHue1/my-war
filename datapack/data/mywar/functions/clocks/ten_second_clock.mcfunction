#####
#Ten second clock
#Author: Dave Hue
#####

#Aggros mobs if player is near 
execute as @e[type=marker,tag=mywar.village,tag=mywar.village_done,tag=!mywar.village_captured,limit=1] at @s run function mywar:entity/village/aggro/aggro

#Replenish mobs
scoreboard players add #mywar.replenish mywar.dummy 1
execute if score #mywar.replenish mywar.dummy matches 3.. run execute as @e[type=marker,tag=mywar.village,tag=mywar.village_done,tag=!mywar.village_captured,limit=1] at @s run function mywar:entity/village/replenish/replenish 
execute if score #mywar.replenish mywar.dummy matches 3.. run scoreboard players set #mywar.replenish mywar.dummy 0

#Resets clock
schedule function mywar:clocks/ten_second_clock 10s
