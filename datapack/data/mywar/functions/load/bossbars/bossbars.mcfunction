#####
#Adds bossbars
#Author: DaveHue
#####


#Conquest level
bossbar add mywar:conquest_level [{"text":"Conquest Level: ","color":"yellow"},{"score":{"name":"#mywar.current_conquest_level","objective":"mywar.dummy"}}]
execute store result bossbar mywar:conquest_level max run scoreboard players get #mywar.conquest_level mywar.dummy
execute store result bossbar mywar:conquest_level value run scoreboard players get #mywar.current_conquest_level mywar.dummy
bossbar set mywar:conquest_level players @a 

#Enemies remaining
bossbar add mywar:enemies_remaining [{"text":"Enemies Remaining: ","color":"red"},{"score":{"name":"@e[tag=mywar.village,sort=nearest,limit=1]","objective":"mywar.er"}}]
execute store result bossbar mywar:enemies_remaining max run scoreboard players get #mywar.spawn_limit mywar.dummy
bossbar set mywar:enemies_remaining players @a 
bossbar set mywar:enemies_remaining visible false
