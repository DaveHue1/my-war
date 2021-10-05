#####
#Adds soldier based on what they are 
#Author: Dave Hue
#####

execute as @s[tag=mywar.foot_soldier,type=zombie] at @s run execute as @a[scores={mywar.coas=1..}] at @s run function mywar:item/commands/collect/zombie
execute as @s[tag=mywar.foot_soldier,type=vindicator] at @s run execute as @a[scores={mywar.coas=1..}] at @s run function mywar:item/commands/collect/illager
execute as @s[tag=mywar.archer] at @s run execute as @a[scores={mywar.coas=1..}] at @s run function mywar:item/commands/collect/archer
execute as @s[tag=mywar.swordsmen] at @s run execute as @a[scores={mywar.coas=1..}] at @s run function mywar:item/commands/collect/swordsmen
execute as @s[tag=mywar.knight] at @s run execute as @a[scores={mywar.coas=1..}] at @s run function mywar:item/commands/collect/knight
execute as @s[tag=mywar.mage] at @s run execute as @a[scores={mywar.coas=1..}] at @s run function mywar:item/commands/collect/mage

execute as @s[tag=mywar.knight] at @s run kill @e[type=horse,sort=nearest,limit=1,team=mywar.friendly]
kill @s


