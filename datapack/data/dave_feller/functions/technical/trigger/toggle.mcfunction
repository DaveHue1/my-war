#########
#Toggles the pack
#Author: DaveHue
#########

#Scoreboard 
scoreboard players enable @s dave_feller.toggle
scoreboard players add @s dave_feller.toggle_state 1

#Score reset
execute if score @s dave_feller.toggle_state matches 2.. run scoreboard players set @s dave_feller.toggle_state 0

#Message
tellraw @s[scores={dave_feller.toggle_state=0}] {"text":"Dave Feller disabled!","color":"red"}
tellraw @s[scores={dave_feller.toggle_state=1}] {"text":"Dave Feller enabled!","color":"dark_green"}

#Revoke advancement
advancement revoke @s only dave_feller:trigger/toggle

#Reset toggle
scoreboard players set @s dave_feller.toggle 0
