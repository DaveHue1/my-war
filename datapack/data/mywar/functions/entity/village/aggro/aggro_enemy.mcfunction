#####
#Aggros enemy soldiers
#Author: Dave Hue
#####

#Tag
tag @e[team=mywar.enemy,tag=mywar.soldier,sort=random,limit=50] add mywar.aggro_enemy

#Clouds
execute as @e[tag=mywar.aggro_enemy,type=#minecraft:undead,type=!skeleton_horse] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["mywar.aggro_enemy_cloud"],Particle:"crit",Radius:0.2f,Duration:20,Effects:[{Id:6b,Amplifier:0b,Duration:0}]}
execute as @e[tag=mywar.aggro_enemy,type=!#minecraft:undead,type=!skeleton_horse] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["mywar.aggro_enemy_cloud"],Particle:"crit",Radius:0.2f,Duration:20,Effects:[{Id:7b,Amplifier:0b,Duration:0}]}

#Resistance
effect give @e[tag=mywar.aggro_enemy] minecraft:resistance 2 255
effect give @e[type=skeleton_horse,distance=..200,team=mywar.enemy] minecraft:resistance 2 255

#Getting teams
execute as @e[tag=mywar.aggro_enemy_cloud] at @s if entity @e[tag=mywar.soldier,limit=1,team=!mywar.enemy,distance=..300] run data modify entity @s Owner set from entity @e[type=!player,type=!horse,type=!villager,team=!mywar.enemy,tag=mywar.soldier,sort=random,limit=1,distance=..300] UUID 
execute as @e[tag=mywar.aggro_enemy_cloud] at @s if entity @a[limit=1,team=!mywar.enemy,distance=..300] unless entity @e[tag=mywar.soldier,limit=1,team=!mywar.enemy,distance=..300] run data modify entity @s Owner set from entity @e[type=player,team=!mywar.enemy,sort=random,limit=1,distance=..300] UUID 

#Removing tags
tag @e[tag=mywar.aggro_enemy] remove mywar.aggro_enemy
