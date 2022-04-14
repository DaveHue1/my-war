#####
#Begin invasion if team check was successful
#Author: Dave Hue
#####

#Begin invasion process
execute as @e[tag=mywar.village,sort=nearest,limit=1] at @s run function mywar:technical/clocks/village/team_check
tag @e[tag=mywar.village,sort=nearest,limit=1] add mywar.invaded

#Message to player that invasion is successful
tellraw @s {"translate":"mywar.message.player.invade.invade_success","color":"green"}

#Message to all other players village is being invaded
tellraw @a[distance=1..300] {"translate":"mywar.message.player.invade.being_invaded","with":[{"selector":"@s","color":"red"}],"color":"yellow"}