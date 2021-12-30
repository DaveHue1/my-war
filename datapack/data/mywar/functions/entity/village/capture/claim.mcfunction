#####
#Claims village
#Author: Dave Hue
#####

#Convert enemies to your team in a 200 block radius around village
function mywar:entity/village/capture/claim/team

#Sound 
playsound minecraft:mywar.war.victory music @a[sort=nearest,limit=1]

#Tags
tag @s add mywar.village_captured
tag @s remove mywar.invaded


#Gives items
give @a[sort=nearest,limit=1] structure_block{display:{Name:'{"text":"Money","color":"yellow","bold":false,"italic":false}'},CustomModelData:1,mywar.currency:1b,mywar.item:1b} 128
function mywar:entity/village/capture/waypoint

#Summon waypoint right click
summon villager ~ ~2 ~ {NoAI:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["mywar.wpr"],ActiveEffects:[{Id:14b,Amplifier:255b,Duration:20000000,ShowParticles:0b}],VillagerData:{profession:"minecraft:nitwit"}}
summon villager ~ ~ ~ {NoAI:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["mywar.wpr"],ActiveEffects:[{Id:14b,Amplifier:255b,Duration:20000000,ShowParticles:0b}],VillagerData:{profession:"minecraft:nitwit"}}

#Message
scoreboard players add @a[sort=nearest,limit=1] mywar.current_conquest_level 1
execute if score @s mywar.spawn_limit < #mywar.global_soldier_limit mywar.dummy run scoreboard players add @a[sort=nearest,limit=1] mywar.spawn_limit 2
execute as @a[sort=nearest,limit=1] at @s run tellraw @s [{"text":"Your conquest level is now ","color":"yellow"},{"score":{"name":"@s","objective":"mywar.current_conquest_level"},"color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"yellow"}]}},{"text":"!","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"green"}]}}]

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

