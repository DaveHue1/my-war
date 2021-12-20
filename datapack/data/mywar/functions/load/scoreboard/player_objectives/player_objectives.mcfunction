##############
#Player objectives
#Author: DaveHue
##############

#Restore objectives - restores money after having reached soldier limit
scoreboard objectives add mywar.archer_restore dummy
scoreboard objectives add mywar.fs_restore dummy
scoreboard objectives add mywar.knight_restore dummy
scoreboard objectives add mywar.sm_restore dummy
scoreboard objectives add mywar.mage_restore dummy

#Conquest level
scoreboard objectives add mywar.current_conquest_level dummy 

#Stat objectives
#Collect limit objective
scoreboard objectives add mywar.cl dummy

#Spawn count objective 
scoreboard objectives add mywar.spawn_count dummy

#Spawn limit objective
scoreboard objectives add mywar.spawn_limit dummy

#Replenish objective
scoreboard objectives add mywar.replenish_limit dummy