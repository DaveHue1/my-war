#####
#Deploys vindicator foot soldier
#Author: Dave Hue
#####

#Summons and modifies
execute if entity @s[team=mywar.red] run summon skeleton_horse ~ ~ ~ {Team:"mywar.red",Tags:["mywar.horse"],Passengers:[{id:"minecraft:wither_skeleton"}],ArmorItem:{id:"minecraft:iron_horse_armor",Count:1b}}
execute if entity @s[team=mywar.blue] run summon skeleton_horse ~ ~ ~ {Team:"mywar.blue",Tags:["mywar.horse"],Passengers:[{id:"minecraft:wither_skeleton"}],ArmorItem:{id:"minecraft:iron_horse_armor",Count:1b}}
execute if entity @s[team=mywar.green] run summon skeleton_horse ~ ~ ~ {Team:"mywar.green",Tags:["mywar.horse"],Passengers:[{id:"minecraft:wither_skeleton"}],ArmorItem:{id:"minecraft:iron_horse_armor",Count:1b}}
execute if entity @s[team=mywar.yellow] run summon skeleton_horse ~ ~ ~ {Team:"mywar.yellow",Tags:["mywar.horse"],Passengers:[{id:"minecraft:wither_skeleton"}],ArmorItem:{id:"minecraft:iron_horse_armor",Count:1b}}

data modify entity @e[type=minecraft:wither_skeleton,sort=nearest,limit=1,tag=!mywar.modified] {} merge from storage mywar:storage root.perm.soldier.knight

#Iteration
scoreboard players remove @s mywar.c_knight 1
execute if score @s mywar.c_knight matches 1.. run function mywar:item/commands/deploy/knight/knight 
