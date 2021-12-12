#####
#Adds soldier based on what they are 
#Author: Dave Hue
#####

execute as @s[tag=mywar.foot_soldier] at @s run function mywar:item/commands/collect/foot_soldier/foot_soldier
execute as @s[tag=mywar.archer] at @s run execute as @a[scores={mywar.coas=1..}] run function mywar:item/commands/collect/archer/archer
execute as @s[tag=mywar.swordsmen] at @s run execute as @a[scores={mywar.coas=1..}] run function mywar:item/commands/collect/swordsmen/swordsmen
execute as @s[tag=mywar.knight] at @s run execute as @a[scores={mywar.coas=1..}] run function mywar:item/commands/collect/knight/knight
execute as @s[tag=mywar.mage] at @s run execute as @a[scores={mywar.coas=1..}] run function mywar:item/commands/collect/mage/mage

particle minecraft:enchant ~ ~1 ~ 0.01 1 0.01 0.2 20
tp @s ~ -66 ~


