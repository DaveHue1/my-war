#####
#Aggros soldiers to fight enemy
#Author: DaveHue
#####

#Tag
tag @e[team=mywar.red,tag=mywar.soldier,sort=random,limit=50] add mywar.aggro_red

#Clouds
execute as @e[tag=mywar.aggro_red,type=#minecraft:undead,type=!skeleton_horse] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["mywar.aggro_red_cloud"],Particle:"crit",Radius:0.2f,Duration:20,Effects:[{Id:6b,Amplifier:0b,Duration:0}]}
execute as @e[tag=mywar.aggro_red,type=!#minecraft:undead,type=!skeleton_horse] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["mywar.aggro_red_cloud"],Particle:"crit",Radius:0.2f,Duration:20,Effects:[{Id:7b,Amplifier:0b,Duration:0}]}

#Resistance
effect give @e[tag=mywar.aggro_red] minecraft:resistance 2 255

#Getting teams
execute as @e[tag=mywar.aggro_red_cloud] at @s if entity @e[tag=mywar.soldier,limit=1,team=!mywar.red] run data modify entity @s Owner set from entity @e[type=!player,type=!horse,type=!villager,team=!mywar.red,tag=mywar.soldier,sort=random,limit=1] UUID 
execute as @e[tag=mywar.aggro_red_cloud] at @s if entity @a[limit=1,team=!mywar.red] unless entity @e[tag=mywar.soldier,limit=1,team=!mywar.red] run data modify entity @s Owner set from entity @e[type=player,team=!mywar.red,sort=random,limit=1] UUID 

#Removing tags
tag @e[tag=mywar.aggro_red] remove mywar.aggro_red
