########
#Targets the nearest player from the village entity and joins their team
#Author: DaveHue
########

execute if entity @s[team=mywar.blue] run tag @e[type=marker,sort=nearest,tag=mywar.village,limit=1] add mywar.blue
execute if entity @s[team=mywar.red] run tag @e[type=marker,sort=nearest,tag=mywar.village,limit=1] add mywar.red
execute if entity @s[team=mywar.green] run tag @e[type=marker,sort=nearest,tag=mywar.village,limit=1] add mywar.green
execute if entity @s[team=mywar.yellow] run tag @e[type=marker,sort=nearest,tag=mywar.village,limit=1] add mywar.yellow
