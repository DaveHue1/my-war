###############
#Gets the current amount of soldiers
#Author: DaveHue
###############

#Add the amount of current soldiers
execute if entity @s[tag=!mywar.blue,tag=!mywar.red,tag=!mywar.green,tag=!mywar.yellow] run execute as @e[team=mywar.enemy,tag=mywar.soldier,distance=..200,tag=!mywar.defense_top] at @s run scoreboard players add #mywar.replenish_count mywar.dummy 1
execute if entity @s[tag=mywar.blue] run execute as @e[team=mywar.blue,tag=mywar.soldier,distance=..200,tag=!mywar.defense_top] at @s run scoreboard players add #mywar.replenish_count mywar.dummy 1
execute if entity @s[tag=mywar.red] run execute as @e[team=mywar.red,tag=mywar.soldier,distance=..200,tag=!mywar.defense_top] at @s run scoreboard players add #mywar.replenish_count mywar.dummy 1
execute if entity @s[tag=mywar.green] run execute as @e[team=mywar.green,tag=mywar.soldier,distance=..200,tag=!mywar.defense_top] at @s run scoreboard players add #mywar.replenish_count mywar.dummy 1
execute if entity @s[tag=mywar.yellow] run execute as @e[team=mywar.yellow,tag=mywar.soldier,distance=..200,tag=!mywar.defense_top] at @s run scoreboard players add #mywar.replenish_count mywar.dummy 1