########
#Summons zombies
#Author: DaveHue
########

summon zombie ~ ~ ~ 
data modify entity @e[type=zombie,tag=!mywar.modified,sort=nearest,limit=1] {} merge from storage mywar:storage root.perm.soldier.foot_soldier.zombie.enemy  

scoreboard players remove #mywar.replenish_limit2 mywar.dummy 1

execute if score #mywar.replenish_limit2 mywar.dummy matches 1.. run function mywar:entity/village/replenish/spawn_zombie
