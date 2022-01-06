#####
#Detect to see if near advisors
#Author: DaveHue
#####

execute if score @s mywar.id = @e[type=villager,tag=mywar.advisor,sort=nearest,limit=1,distance=..20] mywar.id run function mywar:entity/player/upgrade2

advancement revoke @s only mywar:entity/player/upgrade