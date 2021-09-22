######
#Sets up scoreboard related things
#Author: DaveHue
######

##Adds scoreboard objectives
#Tax limit
scoreboard objectives add mywar.tax_limit dummy

#Collect objectives
scoreboard objectives add mywar.c_fs_i dummy
scoreboard objectives add mywar.c_fs_z dummy 

#Deplete objective
scoreboard objectives add mywar.er dummy

#Capture objective
scoreboard objectives add mywar.capture dummy

#Global scoreboard objective 
scoreboard objectives add mywar.dummy dummy 

#Command objectives
#Spread radius
scoreboard objectives add mywar.spreadlvl dummy

#Right clicking
scoreboard objectives add mywar.command minecraft.used:minecraft.carrot_on_a_stick

#Add item objectives 
#Village tracker coordinates
scoreboard objectives add mywar.vt.x dummy
scoreboard objectives add mywar.vt.y dummy
scoreboard objectives add mywar.vt.z dummy

##Sets default scores
#Conquest level
execute unless score #mywar.conquest_level mywar.dummy matches 0.. run scoreboard players set #mywar.conquest_level mywar.dummy 10
execute unless score #mywar.current_conquest_level mywar.dummy matches 0.. run scoreboard players set #mywar.conquest_level mywar.dummy 0

#Spawn count
execute unless score #mywar.spawn_count mywar.dummy matches 0.. run scoreboard players set #mywar.spawn_count mywar.dummy 0

#Spawn limit
execute unless score #mywar.spawn_limit mywar.dummy matches 0.. run scoreboard players set #mywar.spawn_limit mywar.dummy 50

#Replenish limit
execute unless score #mywar.replenish_limit mywar.dummy matches 0.. run scoreboard players set #mywar.replenish_limit mywar.dummy 10

#Tax limit
execute as @a unless score @s mywar.tax_limit matches 0.. run scoreboard players set @s mywar.tax_limit 0

#Enemies remaining 
execute unless score #mywar.enemies_remaining mywar.dummy matches 0.. run scoreboard players set #mywar.enemies_remaining mywar.dummy 0


