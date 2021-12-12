#####
#Decides which foot soldier variant to collect
#Author: Dave Hue
#####

#Decide which variant to collect
execute as @s[type=zombie] at @s run execute as @a[scores={mywar.coas=1..}] run function mywar:item/commands/collect/foot_soldier/zombie/zombie
execute as @s[type=vindicator] at @s run execute as @a[scores={mywar.coas=1..}] run function mywar:item/commands/collect/foot_soldier/vindicator/vindicator
