###############
#Determines the amount of total soldiers to replenish
#Author: DaveHue
###############

execute if score #mywar.replenish_count mywar.dummy > #mywar.replenish_count2 mywar.dummy run scoreboard players operation #mywar.replenish_count mywar.dummy = #mywar.replenish_count2 mywar.dummy 
execute store result score #mywar.replenish_limit mywar.dummy run scoreboard players operation #mywar.replenish_count2 mywar.dummy -= #mywar.replenish_count mywar.dummy
execute if score #mywar.replenish_limit mywar.dummy > #mywar.replenish_limit_perm mywar.dummy run scoreboard players operation #mywar.replenish_limit mywar.dummy = #mywar.replenish_limit_perm mywar.dummy 
