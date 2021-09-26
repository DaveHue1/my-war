#####
#Claims village
#Author: Dave Hue
#####

#Convert enemies to your team in a 200 block radius around village
team join mywar.friendly @e[team=mywar.enemy,distance=..200]

#Adds captured tag
tag @s add mywar.village_captured

#Gives items
give @a ink_sac{display:{Name:'{"text":"Money","color":"yellow","bold":true,"italic":false}'},CustomModelData:1,mywar.currency:1b,mywar.item:1b} 128
function mywar:entity/village/capture/waypoint

#Adds scores
scoreboard players add #mywar.current_conquest_level mywar.dummy 1
scoreboard players add #mywar.spawn_limit mywar.dummy 5
execute store result bossbar mywar:conquest_level value run scoreboard players get #mywar.current_conquest_level mywar.dummy

#Bossbars
bossbar set mywar:conquest_level name [{"text":"Conquest Level: ","color":"yellow"},{"score":{"name":"#mywar.current_conquest_level","objective":"mywar.dummy"}}]
bossbar set mywar:conquest_level players @a 
bossbar set mywar:enemies_remaining visible false

