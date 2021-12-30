#####
#Collects soldiers
#Author: Dave Hue
#####

#Sound 
playsound minecraft:block.note_block.bass master @s ~ ~ ~

#Adds soldier to the list based on what team it is
execute if score @s[team=mywar.blue] mywar.cl < #mywar.global_soldier_limit mywar.dummy if entity @e[team=mywar.blue,tag=mywar.soldier,sort=random,distance=..100] run execute store result score #mywar.tag_collect mywar.dummy run tag @e[team=mywar.blue,tag=mywar.soldier,sort=random,distance=..100,tag=!mywar.non_collect] add mywar.collected
execute if score @s[team=mywar.red] mywar.cl < #mywar.global_soldier_limit mywar.dummy if entity @e[team=mywar.red,tag=mywar.soldier,sort=random,distance=..100] run execute store result score #mywar.tag_collect mywar.dummy run tag @e[team=mywar.red,tag=mywar.soldier,sort=random,distance=..100,tag=!mywar.non_collect] add mywar.collected
execute if score @s[team=mywar.yellow] mywar.cl < #mywar.global_soldier_limit mywar.dummy if entity @e[team=mywar.yellow,tag=mywar.soldier,sort=random,distance=..100] run execute store result score #mywar.tag_collect mywar.dummy run tag @e[team=mywar.yellow,tag=mywar.soldier,sort=random,distance=..100,tag=!mywar.non_collect] add mywar.collected
execute if score @s[team=mywar.green] mywar.cl < #mywar.global_soldier_limit mywar.dummy if entity @e[team=mywar.green,tag=mywar.soldier,sort=random,distance=..100] run execute store result score #mywar.tag_collect mywar.dummy run tag @e[team=mywar.green,tag=mywar.soldier,sort=random,distance=..100,tag=!mywar.non_collect] add mywar.collected

#Collecting messages
execute if score #mywar.tag_collect mywar.dummy matches 1.. run tellraw @s {"text":"Collecting soldiers!","color":"green"}
execute unless score #mywar.tag_collect mywar.dummy matches 1.. run tellraw @s {"text":"No soldiers to collect","color":"red"}

#Collects soldiers
execute if score #mywar.tag_collect mywar.dummy matches 1.. run scoreboard players operation @s mywar.cl += #mywar.tag_collect mywar.dummy
execute if score @s mywar.cl > #mywar.global_soldier_limit mywar.dummy run scoreboard players operation #mywar.tag_collect mywar.dummy = #mywar.global_soldier_limit mywar.dummy
execute if score @s mywar.cl > #mywar.global_soldier_limit mywar.dummy run scoreboard players operation @s mywar.cl = #mywar.global_soldier_limit mywar.dummy
function mywar:item/commands/collect/collect_limit

#Removes tags
tag @e[tag=mywar.collected,sort=nearest,distance=..100,tag=mywar.soldier] remove mywar.collected
tag @e[tag=mywar.collected_set,sort=nearest,distance=..100,tag=mywar.soldier] remove mywar.collected_set  

#Max limit message
execute if score @s mywar.cl >= #mywar.global_soldier_limit mywar.dummy run tellraw @s {"text":"Max limit reached","color":"red"}

