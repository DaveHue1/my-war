########
#Summons zombies
#Author: DaveHue
########

summon horse ~ ~ ~ {Team:"mywar.enemy",Tags:["mywar.horse"],Passengers:[{id:"minecraft:wither_skeleton"}],ArmorItem:{id:"minecraft:iron_horse_armor",Count:1b}}
data modify entity @e[type=wither_skeleton,tag=!mywar.modified,sort=nearest,limit=1] {} merge from storage mywar:storage root.perm.soldier.knight.enemy 

scoreboard players remove #mywar.spawn_limit2 mywar.dummy 1

execute if score #mywar.spawn_limit2 mywar.dummy matches 1.. run function mywar:entity/village/soldier_spawn/spawn_knight
