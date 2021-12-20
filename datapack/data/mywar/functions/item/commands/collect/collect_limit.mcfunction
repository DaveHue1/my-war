#####
#Collects all soldiers that were tagged
#Author: Dave Hue
#####

execute if entity @s[team=mywar.red] run execute as @e[tag=mywar.collected,tag=!mywar.collected_set,team=mywar.red,sort=random,limit=1] at @s run function mywar:item/commands/collect/add
execute if entity @s[team=mywar.blue] run execute as @e[tag=mywar.collected,tag=!mywar.collected_set,team=mywar.blue,sort=random,limit=1] at @s run function mywar:item/commands/collect/add
execute if entity @s[team=mywar.green] run execute as @e[tag=mywar.collected,tag=!mywar.collected_set,team=mywar.green,sort=random,limit=1] at @s run function mywar:item/commands/collect/add
execute if entity @s[team=mywar.yellow] run execute as @e[tag=mywar.collected,tag=!mywar.collected_set,team=mywar.yellow,sort=random,limit=1] at @s run function mywar:item/commands/collect/add

scoreboard players remove #mywar.tag_collect mywar.dummy 1

execute if score #mywar.tag_collect mywar.dummy matches 1.. run function mywar:item/commands/collect/collect_limit