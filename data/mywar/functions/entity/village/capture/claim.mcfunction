#####
#Claims village
#Author: Dave Hue
#####

#Convert enemies to your team in a 200 block radius around village
team join mywar.friendly @e[team=mywar.enemy,distance=..200]

#Adds captured tag
tag @s add mywar.village_captured

#Add scores
scoreboard players add #mywar.current_conquest_level mywar.dummy 1
execute store result bossbar mywar:conquest_level value run scoreboard players get #mywar.current_conquest_level mywar.dummy
bossbar set mywar:conquest_level name [{"text":"Conquest Level: ","color":"yellow"},{"score":{"name":"#mywar.current_conquest_level","objective":"mywar.dummy"}}]
bossbar set mywar:conquest_level players @a 
bossbar set mywar:enemies_remaining visible false

