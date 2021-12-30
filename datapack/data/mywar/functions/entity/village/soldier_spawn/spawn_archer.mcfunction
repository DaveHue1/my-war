########
#Summons archer
#Author: DaveHue
########

summon skeleton ~ ~ ~ 
data modify entity @e[type=skeleton,tag=!mywar.modified,sort=nearest,limit=1] {} merge from storage mywar:storage root.perm.soldier.archer

scoreboard players remove @a[sort=nearest,limit=1] mywar.dummy 1

function mywar:entity/village/replenish/team/team

execute if score @a[sort=nearest,limit=1] mywar.dummy matches 1.. run function mywar:entity/village/soldier_spawn/spawn_archer
