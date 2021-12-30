#####
#Initial score setup
#Author: DaveHue
#####

#Collect limit
execute as @a unless score @s mywar.cl matches 0.. run scoreboard players set @s mywar.cl 0

#Spawn count
execute unless score @s mywar.spawn_count matches 0.. run scoreboard players set @s mywar.spawn_count 1

#Spawn limit
execute unless score @s mywar.spawn_limit matches 0.. run scoreboard players set @s mywar.spawn_limit 50

#Replenish limit
execute unless score @s mywar.replenish_limit matches 0.. run scoreboard players set @s mywar.replenish_limit 10

#Set current conquest level to 0
execute unless score @s mywar.current_conquest_level matches 0.. run scoreboard players set @s mywar.current_conquest_level 0