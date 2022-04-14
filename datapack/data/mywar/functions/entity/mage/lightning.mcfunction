#####
#Lightning ability
#Author: DaveHue
#####

execute if entity @s[team=mywar.friendly] run execute as @e[team=mywar.enemy,sort=random,limit=1,distance=..15] at @s run summon lightning_bolt

execute if entity @s[team=mywar.enemy] run execute as @e[team=mywar.friendly,sort=random,limit=1,distance=..15] at @s run summon lightning_bolt
