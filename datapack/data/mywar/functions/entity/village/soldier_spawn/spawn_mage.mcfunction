########
#Summons zombies
#Author: DaveHue
########

summon zombie ~ ~ ~ 
data modify entity @e[type=zombie,tag=!mywar.modified,sort=nearest,limit=1] {} merge from storage mywar:storage root.perm.soldier.mage

scoreboard players remove @a[sort=nearest,limit=1] mywar.dummy 1

execute if score @a[sort=nearest,limit=1] mywar.dummy matches 1.. run function mywar:entity/village/soldier_spawn/spawn_mage
