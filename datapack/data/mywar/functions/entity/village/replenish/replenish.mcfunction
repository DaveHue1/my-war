###############
#Starts spawn iteration
#Author: DaveHue
###############

#Foot soldier
scoreboard players operation @a[sort=nearest,limit=1] mywar.dummy = @a[sort=nearest,limit=1] mywar.replenish_limit

scoreboard players operation @a[sort=nearest,limit=1] mywar.dummy /= @a[sort=nearest,limit=1] mywar.spawn_count

execute if score @a[sort=nearest,limit=1] mywar.current_conquest_level matches 0.. run function mywar:entity/village/replenish/soldier/spawn_foot_soldier

#Archer
scoreboard players operation @a[sort=nearest,limit=1] mywar.dummy = @a[sort=nearest,limit=1] mywar.replenish_limit

scoreboard players operation @a[sort=nearest,limit=1] mywar.dummy /= @a[sort=nearest,limit=1] mywar.spawn_count

execute if score @a[sort=nearest,limit=1] mywar.current_conquest_level matches 5.. run function mywar:entity/village/replenish/soldier/spawn_archer

#Swordsmen
scoreboard players operation @a[sort=nearest,limit=1] mywar.dummy = @a[sort=nearest,limit=1] mywar.replenish_limit

scoreboard players operation @a[sort=nearest,limit=1] mywar.dummy /= @a[sort=nearest,limit=1] mywar.spawn_count

execute if score @a[sort=nearest,limit=1] mywar.current_conquest_level matches 10.. run function mywar:entity/village/replenish/soldier/spawn_swordsmen

#Knight
scoreboard players operation @a[sort=nearest,limit=1] mywar.dummy = @a[sort=nearest,limit=1] mywar.replenish_limit

scoreboard players operation @a[sort=nearest,limit=1] mywar.dummy /= @a[sort=nearest,limit=1] mywar.spawn_count

execute if score @a[sort=nearest,limit=1] mywar.current_conquest_level matches 15.. run function mywar:entity/village/replenish/soldier/spawn_knight


#Mage
scoreboard players operation @a[sort=nearest,limit=1] mywar.dummy = @a[sort=nearest,limit=1] mywar.replenish_limit

scoreboard players operation @a[sort=nearest,limit=1] mywar.dummy /= @a[sort=nearest,limit=1] mywar.spawn_count

execute if score @a[sort=nearest,limit=1] mywar.current_conquest_level matches 20.. run function mywar:entity/village/replenish/soldier/spawn_mage

#Spread members of the team
function mywar:entity/village/replenish/team/spread

#Spawn unit to defend top
function mywar:entity/village/replenish/defense/defense_top



