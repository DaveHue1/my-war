#########
#Break log
#Author: DaveHue
#########

#Break log
execute as @a[tag=dave_feller.broke_log] at @s run function dave_feller:item/break_log

#Reschedule
schedule function dave_feller:load/break_log 1t