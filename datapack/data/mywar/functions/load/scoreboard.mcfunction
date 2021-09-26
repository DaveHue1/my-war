######
#Sets up scoreboard related things
#Author: DaveHue
######

###Adds scoreboard objectives

##Collect objectives
#Foot Soldier
scoreboard objectives add mywar.c_fs_i dummy
scoreboard objectives add mywar.c_fs_z dummy 

#Archer
scoreboard objectives add mywar.c_archer dummy

##Misc
#Deplete objective
scoreboard objectives add mywar.er dummy

#Capture objective
scoreboard objectives add mywar.capture dummy

#Global scoreboard objective 
scoreboard objectives add mywar.dummy dummy 

#Advisor trade 
scoreboard objectives add mywar.traded minecraft.custom:minecraft.traded_with_villager

##Command objectives
#Right clicking
scoreboard objectives add mywar.coas minecraft.used:minecraft.carrot_on_a_stick

#Tax limit
scoreboard objectives add mywar.tax_limit dummy

#Spread radius
scoreboard objectives add mywar.spreadlvl dummy

##Add item objectives 
#Village tracker coordinates
scoreboard objectives add mywar.vt.x dummy
scoreboard objectives add mywar.vt.y dummy
scoreboard objectives add mywar.vt.z dummy

#Waypoint coordinates
scoreboard objectives add mywar.wp.x dummy
scoreboard objectives add mywar.wp.y dummy
scoreboard objectives add mywar.wp.z dummy

###Sets default scores
#Conquest level
execute unless score #mywar.conquest_level mywar.dummy matches 0.. run scoreboard players set #mywar.conquest_level mywar.dummy 10
execute unless score #mywar.current_conquest_level mywar.dummy matches 0.. run scoreboard players set #mywar.conquest_level mywar.dummy 0

#Spawn count
execute unless score #mywar.spawn_count mywar.dummy matches 0.. run scoreboard players set #mywar.spawn_count mywar.dummy 1

#Spawn limit
execute unless score #mywar.spawn_limit mywar.dummy matches 0.. run scoreboard players set #mywar.spawn_limit mywar.dummy 50

#Replenish limit
execute unless score #mywar.replenish_limit mywar.dummy matches 0.. run scoreboard players set #mywar.replenish_limit mywar.dummy 10

#Enemies remaining 
execute unless score #mywar.enemies_remaining mywar.dummy matches 0.. run scoreboard players set #mywar.enemies_remaining mywar.dummy 0


