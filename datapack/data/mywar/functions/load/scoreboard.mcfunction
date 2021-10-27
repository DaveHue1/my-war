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

#Swordsmen 
scoreboard objectives add mywar.c_sm dummy

#Knight
scoreboard objectives add mywar.c_knight dummy

#Mage
scoreboard objectives add mywar.c_mage dummy

##Trigger objectives 
#Guide Book objective
scoreboard objectives add mywar.book trigger

##Misc
#Castle stairs objective
scoreboard objectives add mywar.stairs dummy

#Waypoint rightclick objective
scoreboard objectives add mywar.vrc minecraft.custom:minecraft.talked_to_villager

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

#Collect limit
scoreboard objectives add mywar.cl dummy

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

#Global collect limit
scoreboard players set #mywar.cl_perm mywar.dummy 100
scoreboard players set #mywar.c_collect_message mywar.dummy -1

#Return collect money values
scoreboard players set #mywar.temp.archer.remove.constant mywar.dummy 4


