#####
#Aggros enemy soldiers
#Author: Dave Hue
#####

#Tag
tag @e[team=mywar.friendly,tag=mywar.soldier,sort=random,limit=50] add mywar.friendly_aggro

#Clouds
execute as @e[tag=mywar.friendly_aggro,type=#mywar:undead] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["mywar.aggro_friendly_cloud"],Particle:"crit",Radius:1f,Duration:20,Effects:[{Id:6b,Amplifier:1b,Duration:0}]}
execute as @e[tag=mywar.friendly_aggro,type=!#mywar:undead] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["mywar.aggro_friendly_cloud"],Particle:"crit",Radius:1f,Duration:20,Effects:[{Id:6b,Amplifier:1b,Duration:0}]}

#Resistance
effect give @e[tag=mywar.friendly_aggro] minecraft:resistance 1 255

#Getting teams
execute as @e[tag=mywar.aggro_friendly_cloud] at @s run data modify entity @s Owner set from entity @e[team=mywar.enemy,sort=random,limit=1] UUID 

#Removing tags
tag @e[tag=mywar.friendly_aggro] remove mywar.friendly_aggro
