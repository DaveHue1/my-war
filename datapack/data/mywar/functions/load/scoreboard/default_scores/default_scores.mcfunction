#####
#Sets default scores
#Author: Dave Hue
#####

#Replenish limit 
scoreboard players set #mywar.replenish_limit_perm mywar.dummy 10

#Conquest level
execute unless score #mywar.conquest_level mywar.dummy matches 0.. run scoreboard players set #mywar.conquest_level mywar.dummy 10
execute unless score #mywar.current_conquest_level mywar.dummy matches 0.. run scoreboard players set #mywar.current_conquest_level mywar.dummy 0

#Collect limit
execute as @a unless score @s mywar.cl matches 0.. run scoreboard players set @s mywar.cl 0

#Upgrade scores 
execute unless score #mywar.upgrade1 mywar.dummy matches 0.. run scoreboard players set #mywar.upgrade1 mywar.dummy 3
execute unless score #mywar.upgrade2 mywar.dummy matches 0.. run scoreboard players set #mywar.upgrade2 mywar.dummy 6
execute unless score #mywar.upgrade3 mywar.dummy matches 0.. run scoreboard players set #mywar.upgrade3 mywar.dummy 9
execute unless score #mywar.upgrade4 mywar.dummy matches 0.. run scoreboard players set #mywar.upgrade4 mywar.dummy 12

#Enemies remaining 
execute unless score #mywar.enemies_remaining mywar.dummy matches 0.. run scoreboard players set #mywar.enemies_remaining mywar.dummy 0

#Global soldier limit
execute unless score #mywar.global_soldier_limit mywar.dummy matches 0.. run scoreboard players set #mywar.global_soldier_limit mywar.dummy 100

#Negative value
execute unless score #mywar.negative_value mywar.dummy matches 0.. run scoreboard players set #mywar.negative_value mywar.dummy -1
