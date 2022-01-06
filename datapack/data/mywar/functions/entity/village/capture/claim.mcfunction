#####
#Claims village
#Author: Dave Hue
#####

#Convert enemies to your team in a 200 block radius around village
function mywar:entity/village/capture/claim/team

#Sound 
playsound minecraft:mywar.war.victory music @p

#Tags
tag @s add mywar.village_captured
tag @s remove mywar.invaded


#Gives items
execute as @p at @s run function mywar:item/give/money
execute as @p at @s run function mywar:item/give/money
execute as @p at @s run function mywar:item/give/money
function mywar:entity/village/capture/waypoint

#Summon waypoint right click
summon villager ~ ~2 ~ {NoAI:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["mywar.wpr"],ActiveEffects:[{Id:14b,Amplifier:255b,Duration:20000000,ShowParticles:0b}],VillagerData:{profession:"minecraft:nitwit"}}
summon villager ~ ~ ~ {NoAI:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["mywar.wpr"],ActiveEffects:[{Id:14b,Amplifier:255b,Duration:20000000,ShowParticles:0b}],VillagerData:{profession:"minecraft:nitwit"}}

#Message
scoreboard players add @p mywar.current_conquest_level 1
execute if score @s mywar.spawn_limit < #mywar.global_soldier_limit mywar.dummy run scoreboard players add @a[sort=nearest,limit=1] mywar.spawn_limit 2
tellraw @p {"translate":"mywar.message.village.conquest_level","with":[{"score":{"name":"@p","objective":"mywar.current_conquest_level"},"color":"green"}],"color":"yellow"}

#Adds scores
execute if score @a[sort=nearest,limit=1] mywar.current_conquest_level = #mywar.upgrade1 mywar.dummy run scoreboard players add @a[sort=nearest,limit=1] mywar.spawn_count 1 
execute if score @a[sort=nearest,limit=1] mywar.current_conquest_level = #mywar.upgrade1 mywar.dummy run tag @a[sort=nearest,limit=1] add mywar.upgrade_pending

execute if score @a[sort=nearest,limit=1] mywar.current_conquest_level = #mywar.upgrade2 mywar.dummy run scoreboard players add @a[sort=nearest,limit=1] mywar.spawn_count 1 
execute if score @a[sort=nearest,limit=1] mywar.current_conquest_level = #mywar.upgrade2 mywar.dummy run tag @a[sort=nearest,limit=1] add mywar.upgrade_pending

execute if score @a[sort=nearest,limit=1] mywar.current_conquest_level = #mywar.upgrade3 mywar.dummy run scoreboard players add @a[sort=nearest,limit=1] mywar.spawn_count 1 
execute if score @a[sort=nearest,limit=1] mywar.current_conquest_level = #mywar.upgrade3 mywar.dummy run tag @a[sort=nearest,limit=1] add mywar.upgrade_pending

execute if score @a[sort=nearest,limit=1] mywar.current_conquest_level = #mywar.upgrade4 mywar.dummy run scoreboard players add @a[sort=nearest,limit=1] mywar.spawn_count 1 
execute if score @a[sort=nearest,limit=1] mywar.current_conquest_level = #mywar.upgrade4 mywar.dummy run tag @a[sort=nearest,limit=1] add mywar.upgrade_pending

#Kill knight horses
execute as @e[type=skeleton_horse,distance=..200,tag=mywar.horse] at @s unless entity @e[type=wither_skeleton,tag=mywar.knight,tag=mywar.soldier,distance=..3] run tp @s ~ ~-66 ~

