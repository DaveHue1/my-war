#####
#Adds soldier based on what they are 
#Author: Dave Hue
#####

execute as @s[tag=mywar.foot_soldier] at @s run function mywar:item/controller/collect/foot_soldier/foot_soldier
execute as @s[tag=mywar.archer] at @s run function mywar:item/controller/collect/archer/archer
execute as @s[tag=mywar.swordsmen] at @s run function mywar:item/controller/collect/swordsmen/swordsmen
execute as @s[tag=mywar.knight] at @s run function mywar:item/controller/collect/knight/knight
execute as @s[tag=mywar.mage] at @s run function mywar:item/controller/collect/mage/mage

tag @s add mywar.collected_set
particle minecraft:enchant ~ ~1 ~ 0.01 1 0.01 0.2 20
tp @s ~ -66 ~
execute if entity @s[tag=mywar.knight] run tp @e[tag=mywar.horse,sort=nearest,limit=1,type=skeleton_horse,distance=..2] ~ -66 ~


