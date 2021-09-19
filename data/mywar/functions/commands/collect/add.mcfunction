#####
#Adds soldier based on what they are 
#Author: Dave Hue
#####

#Foot soldiers
execute as @s[tag=mywar.foot_soldier] at @s run scoreboard players add @a[scores={mywar.command=1..}] mywar.c_fs 1 
execute as @s[tag=mywar.foot_soldier] at @s run kill @s 
