#########
#Loading function
#Author: DaveHue
#########

#Scoreboard objectives
scoreboard objectives add dave_feller.durability_used dummy
scoreboard objectives add dave_feller.toggle_state dummy
scoreboard objectives add dave_feller.toggle trigger

#Break log
schedule function dave_feller:load/break_log 1t