#####
#Sets default scores
#Author: Dave Hue
#####

#Conquest level
execute unless score #mywar.conquest_level mywar.dummy matches 0.. run scoreboard players set #mywar.conquest_level mywar.dummy 10
execute unless score #mywar.current_conquest_level mywar.dummy matches 0.. run scoreboard players set #mywar.current_conquest_level mywar.dummy 0

#Collect limit
execute as @a unless score @s mywar.cl matches 0.. run scoreboard players set @s mywar.cl 0

#Spawn count
execute unless score #mywar.spawn_count mywar.dummy matches 0.. run scoreboard players set #mywar.spawn_count mywar.dummy 1

#Spawn limit
execute unless score #mywar.spawn_limit mywar.dummy matches 0.. run scoreboard players set #mywar.spawn_limit mywar.dummy 50

#Replenish limit
execute unless score #mywar.replenish_limit mywar.dummy matches 0.. run scoreboard players set #mywar.replenish_limit mywar.dummy 10

#Enemies remaining 
execute unless score #mywar.enemies_remaining mywar.dummy matches 0.. run scoreboard players set #mywar.enemies_remaining mywar.dummy 0

#Global soldier limit
execute unless score #mywar.global_soldier_limit mywar.dummy matches 0.. run scoreboard players set #mywar.global_soldier_limit mywar.dummy 100

#Negative value
execute unless score #mywar.negative_value mywar.dummy matches 0.. run scoreboard players set #mywar.negative_value mywar.dummy -1