#####
#Deplete village level
#Author: DaveHue
#####

#Set score
scoreboard players remove @e[tag=mywar.village,sort=nearest,limit=1] mywar.er 1
execute store result bossbar mywar:enemies_remaining value run scoreboard players get @e[tag=mywar.village,sort=nearest,limit=1] mywar.er
bossbar set mywar:enemies_remaining name [{"text":"Enemies Remaining: ","color":"red"},{"score":{"name":"@e[tag=mywar.village,sort=nearest,limit=1]","objective":"mywar.er"}}]
bossbar set mywar:enemies_remaining visible true

#Kill entity
kill @s
