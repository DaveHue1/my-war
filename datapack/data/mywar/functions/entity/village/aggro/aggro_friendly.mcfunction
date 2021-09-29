#####
#Aggros soldiers to fight enemy
#Author: DaveHue
#####

#Tag
tag @e[team=mywar.friendly,tag=mywar.soldier,sort=random,limit=50] add mywar.aggro_friendly

#Clouds
execute as @e[tag=mywar.aggro_friendly,type=#minecraft:undead,type=!horse] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["mywar.aggro_friendly_cloud"],Particle:"crit",Radius:0.2f,Duration:20,Effects:[{Id:6b,Amplifier:0b,Duration:0}]}
execute as @e[tag=mywar.aggro_friendly,type=!#minecraft:undead,type=!horse] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["mywar.aggro_friendly_cloud"],Particle:"crit",Radius:0.2f,Duration:20,Effects:[{Id:7b,Amplifier:0b,Duration:0}]}

#Resistance
effect give @e[tag=mywar.aggro_friendly] minecraft:resistance 2 255

#Getting teams
execute as @e[tag=mywar.aggro_friendly_cloud] at @s run data modify entity @s Owner set from entity @e[team=mywar.enemy,sort=random,limit=1] UUID 

#Removing tags
tag @e[tag=mywar.aggro_friendly] remove mywar.aggro_friendly
