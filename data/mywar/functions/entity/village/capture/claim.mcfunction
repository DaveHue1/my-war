#####
#Claims village
#Author: Dave Hue
#####

#Convert enemies to your team in a 200 block radius around village
team join mywar.friendly @e[team=mywar.enemy,distance=..200]

#Adds captured tag
tag @s add mywar.village_captured

#Adds to the village count
scoreboard players add #mywar.village_count mywar.dummy 1
