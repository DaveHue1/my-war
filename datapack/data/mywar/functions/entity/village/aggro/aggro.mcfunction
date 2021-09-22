#####
#Aggros enemy soldiers
#Author: Dave Hue
#####

#Tag
tag @e[team=mywar.enemy,tag=mywar.soldier,sort=random,limit=50] add mywar.aggro_enemy

#Clouds
execute as @e[tag=mywar.aggro_enemy,type=#minecraft:undead] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["mywar.aggro_enemy_cloud"],Particle:"crit",Radius:1f,Duration:20,Effects:[{Id:6b,Amplifier:1b,Duration:0}]}
execute as @e[tag=mywar.aggro_enemy,type=!#minecraft:undead] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["mywar.aggro_enemy_cloud"],Particle:"crit",Radius:1f,Duration:20,Effects:[{Id:7b,Amplifier:1b,Duration:0}]}

#Resistance
effect give @e[tag=mywar.aggro_enemy] minecraft:resistance 1 255

#Getting teams
execute as @e[tag=mywar.aggro_enemy_cloud] at @s run data modify entity @s Owner set from entity @e[type=!player,type=!villager,team=mywar.friendly,sort=random,limit=1] UUID 
execute as @e[tag=mywar.aggro_enemy_cloud] at @s if entity @a[distance=..10] run data modify entity @s Owner set from entity @a[team=mywar.friendly,sort=random,limit=1] UUID 

#Removing tags
tag @e[tag=mywar.aggro_enemy] remove mywar.aggro_enemy
