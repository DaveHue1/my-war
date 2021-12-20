#####
#Sets things as players enters village
#Author: Dave Hue
#####

#Sound
playsound minecraft:mywar.war.music music @a[distance=..200] ~ ~ ~

#Villagers join relevant team
team join mywar.enemy @e[type=villager,distance=..200]

#Score 
scoreboard players operation @s mywar.er = @a[sort=nearest,limit=1] mywar.spawn_limit

#Tag
tag @s add mywar.village_set

