#########
#Break log
#Author: DaveHue
#########

#Execute from dropped log  
execute if score @s dave_feller.toggle_state matches 1.. run execute as @e[type=item,sort=nearest,limit=1,predicate=dave_feller:entity/dropped_log,tag=!dave_feller.dropped_log] at @s run function dave_feller:technical/raycast/break_log

#Tag 
tag @s remove dave_feller.broke_log