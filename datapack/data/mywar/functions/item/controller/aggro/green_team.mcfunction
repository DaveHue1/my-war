#####
#Aggros blue soldiers
#Author: DaveHue
#####

#Sound 
playsound minecraft:block.note_block.bass master @s ~ ~ ~

#Tag
tag @e[team=mywar.green,tag=mywar.soldier,sort=random,limit=50] add mywar.aggro_green

#Clouds
execute as @e[tag=mywar.aggro_green,type=#minecraft:undead,type=!skeleton_horse] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["mywar.aggro_green_cloud"],Particle:"crit",Radius:1f,Duration:20,Effects:[{Id:6b,Amplifier:1b,Duration:0}]}
execute as @e[tag=mywar.aggro_green,type=!#minecraft:undead,type=!skeleton_horse] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["mywar.aggro_green_cloud"],Particle:"crit",Radius:1f,Duration:20,Effects:[{Id:7b,Amplifier:1b,Duration:0}]}

#Resistance
effect give @e[tag=mywar.aggro_green] minecraft:resistance 1 255

#Getting teams
execute unless predicate mywar:player/sneaking run execute as @e[tag=mywar.aggro_green_cloud] at @s run data modify entity @s Owner set from entity @e[tag=mywar.soldier,type=!skeleton_horse,team=!mywar.green,sort=random,limit=1] UUID 
execute if predicate mywar:player/sneaking run execute as @e[tag=mywar.aggro_green_cloud] at @s run data modify entity @s Owner set from entity @e[tag=mywar.soldier,type=!skeleton_horse,team=!mywar.green,sort=nearest,limit=1] UUID 

#Removing tags
tag @e[tag=mywar.aggro_green] remove mywar.aggro_green
