#####
#Aggros soldiers to fight enemy
#Author: DaveHue
#####

#Aggros friendly soldiers
execute as @e[team=mywar.friendly,tag=mywar.soldier,sort=random,limit=50] at @s run summon snowball ~ ~2.3 ~ {Motion:[0.0,-1.0,0.0],Tags:["mywar.snowball_aggro"]}
execute as @e[type=snowball,tag=mywar.snowball_aggro] at @s run data modify entity @s Owner set from entity @e[team=mywar.enemy,sort=random,limit=1] UUID 
