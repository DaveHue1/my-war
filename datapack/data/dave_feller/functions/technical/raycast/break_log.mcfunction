#########
#Break log and execute raycast function tree
#Author: DaveHue
#########

## If block log
execute if block ~ ~ ~ #minecraft:logs run fill ~ ~ ~ ~ ~ ~ air destroy
execute if block ~ ~ ~ #minecraft:leaves run fill ~ ~ ~ ~ ~ ~ air destroy

#Tag
tag @e[type=item,sort=nearest,limit=1,predicate=dave_feller:entity/dropped_log] add dave_feller.dropped_log

#Durabiliy loss 
execute as @a[sort=nearest,limit=1,tag=dave_feller.broke_log] at @s run function dave_feller:technical/raycast/durability_loss

## Recur unless block is log
execute positioned ~ ~1 ~ if block ~ ~ ~ #minecraft:logs run function dave_feller:technical/raycast/break_log
execute positioned ~ ~-1 ~ if block ~ ~ ~ #minecraft:logs run function dave_feller:technical/raycast/break_log
execute positioned ~ ~ ~1 if block ~ ~ ~ #minecraft:logs run function dave_feller:technical/raycast/break_log
execute positioned ~ ~ ~-1 if block ~ ~ ~ #minecraft:logs run function dave_feller:technical/raycast/break_log
execute positioned ~1 ~ ~ if block ~ ~ ~ #minecraft:logs run function dave_feller:technical/raycast/break_log
execute positioned ~-1 ~ ~ if block ~ ~ ~ #minecraft:logs run function dave_feller:technical/raycast/break_log

execute positioned ~ ~1 ~1 if block ~ ~ ~ #minecraft:logs run function dave_feller:technical/raycast/break_log
execute positioned ~ ~1 ~-1 if block ~ ~ ~ #minecraft:logs run function dave_feller:technical/raycast/break_log
execute positioned ~1 ~1 ~ if block ~ ~ ~ #minecraft:logs run function dave_feller:technical/raycast/break_log
execute positioned ~-1 ~1 ~ if block ~ ~ ~ #minecraft:logs run function dave_feller:technical/raycast/break_log

execute positioned ~1 ~1 ~1 if block ~ ~ ~ #minecraft:logs run function dave_feller:technical/raycast/break_log
execute positioned ~-1 ~1 ~-1 if block ~ ~ ~ #minecraft:logs run function dave_feller:technical/raycast/break_log
execute positioned ~1 ~1 ~-1 if block ~ ~ ~ #minecraft:logs run function dave_feller:technical/raycast/break_log
execute positioned ~-1 ~1 ~1 if block ~ ~ ~ #minecraft:logs run function dave_feller:technical/raycast/break_log

execute positioned ~1 ~ ~1 if block ~ ~ ~ #minecraft:logs run function dave_feller:technical/raycast/break_log
execute positioned ~-1 ~ ~-1 if block ~ ~ ~ #minecraft:logs run function dave_feller:technical/raycast/break_log
execute positioned ~1 ~ ~-1 if block ~ ~ ~ #minecraft:logs run function dave_feller:technical/raycast/break_log
execute positioned ~-1 ~ ~1 if block ~ ~ ~ #minecraft:logs run function dave_feller:technical/raycast/break_log
