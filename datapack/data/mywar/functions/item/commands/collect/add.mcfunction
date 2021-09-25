#####
#Adds soldier based on what they are 
#Author: Dave Hue
#####

#Foot soldiers
execute as @s[tag=mywar.foot_soldier,type=vindicator] at @s run scoreboard players add @a[scores={mywar.command=1..}] mywar.c_fs_i 1 
execute as @s[tag=mywar.foot_soldier,type=zombie] at @s run scoreboard players add @a[scores={mywar.command=1..}] mywar.c_fs_z 1 

#Kill
execute as @s[tag=mywar.foot_soldier] at @s run kill @s 
