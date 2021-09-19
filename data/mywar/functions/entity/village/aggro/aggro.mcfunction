#####
#Aggros enemy soldiers
#Author: Dave Hue
#####

#Aggros mobs
execute as @e[team=mywar.enemy,tag=mywar.soldier,sort=random,limit=50] at @s run summon snowball ~ ~2.3 ~ {Motion:[0.0,-1.0,0.0],Tags:["mywar.snowball_aggro_enemy"]}
execute as @e[type=snowball,tag=mywar.snowball_aggro_enemy] at @s run data modify entity @s Owner set from entity @e[team=mywar.friendly,sort=random,limit=1] UUID 
