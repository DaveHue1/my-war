#####
#Aggros enemy soldiers
#Author: Dave Hue
#####

#Tag
tag @e[team=mywar.enemy,tag=mywar.soldier,sort=nearest,limit=30,distance=..50] add mywar.aggro_distract
execute as @e[tag=mywar.aggro_distract] at @s run data merge entity @s {Attributes:[{Name:generic.follow_range,Base:0}]}
execute as @e[tag=mywar.aggro_distract] at @s run data merge entity @s {Attributes:[{Name:generic.follow_range,Base:500}]}

#Clouds
execute as @e[tag=mywar.aggro_distract,type=#minecraft:undead,type=!horse] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["mywar.aggro_distract_cloud"],Particle:"crit",Radius:0.2f,Duration:20,Effects:[{Id:6b,Amplifier:0b,Duration:0}]}
execute as @e[tag=mywar.aggro_distract,type=!#minecraft:undead,type=!horse] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["mywar.aggro_distract_cloud"],Particle:"crit",Radius:0.2f,Duration:20,Effects:[{Id:7b,Amplifier:0b,Duration:0}]}

#Resistance
effect give @e[tag=mywar.aggro_distract] minecraft:resistance 2 255

#Getting teams
execute as @e[tag=mywar.aggro_distract_cloud] at @s run data modify entity @s Owner set from entity @e[type=!player,type=!horse,type=!villager,team=mywar.friendly,sort=random,limit=1] UUID 
#execute as @e[tag=mywar.aggro_distract_cloud] at @s if entity @a[distance=..4] run data modify entity @s Owner set from entity @a[team=mywar.friendly,sort=random,limit=1] UUID 

#Removing tags
tag @e[tag=mywar.aggro_distract] remove mywar.aggro_distract
