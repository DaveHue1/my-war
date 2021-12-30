###############
#Starts spawn iteration
#Author: DaveHue
###############

#Add the amount of current soldiers
function mywar:entity/village/replenish/replenish_count

#Get the current spawn limit
function mywar:entity/village/replenish/current_spawn_limit

#Determines how many soldiers need to be replenished 
function mywar:entity/village/replenish/replenish_amount
#Reset scores
scoreboard players set #mywar.replenish_count mywar.dummy 0
scoreboard players set #mywar.replenish_count2 mywar.dummy 0

#Foot soldier
function mywar:entity/village/replenish/split_amount

execute if score @a[sort=nearest,limit=1,scores={mywar.dummy=1..}] mywar.current_conquest_level matches 0.. run function mywar:entity/village/replenish/soldier/spawn_foot_soldier

#Archer
function mywar:entity/village/replenish/split_amount

execute if score @a[sort=nearest,limit=1,scores={mywar.dummy=1..}] mywar.current_conquest_level >= #mywar.upgrade1 mywar.dummy run function mywar:entity/village/replenish/soldier/spawn_archer

#Swordsmen
function mywar:entity/village/replenish/split_amount

execute if score @a[sort=nearest,limit=1,scores={mywar.dummy=1..}] mywar.current_conquest_level >= #mywar.upgrade2 mywar.dummy run function mywar:entity/village/replenish/soldier/spawn_swordsmen

#Knight
function mywar:entity/village/replenish/split_amount

execute if score @a[sort=nearest,limit=1,scores={mywar.dummy=1..}] mywar.current_conquest_level >= #mywar.upgrade3 mywar.dummy run function mywar:entity/village/replenish/soldier/spawn_knight


#Mage
function mywar:entity/village/replenish/split_amount

execute if score @a[sort=nearest,limit=1,scores={mywar.dummy=1..}] mywar.current_conquest_level >= #mywar.upgrade4 mywar.dummy run function mywar:entity/village/replenish/soldier/spawn_mage

tag @e[tag=mywar.soldier,tag=mywar.modified,sort=nearest,tag=!mywar.non_collect,distance=..2] add mywar.non_collect

#Reset scores
scoreboard players set #mywar.replenish_count mywar.dummy 0
scoreboard players set #mywar.replenish_count2 mywar.dummy 0
scoreboard players set #mywar.replenish_limit mywar.dummy 0

#Spread members of the team
function mywar:entity/village/replenish/team/spread

#Spawn unit to defend top
function mywar:entity/village/replenish/defense/defense_top



