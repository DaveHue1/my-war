##############
#Decide to trade or restore 
#Author: DaveHue
##############

execute if score @s mywar.cl < #mywar.global_soldier_limit mywar.dummy if entity @e[type=villager,tag=mywar.entity,tag=mywar.advisor,distance=..10,sort=nearest,limit=1] run function mywar:entity/player/trade/trade
execute if score @s mywar.cl >= #mywar.global_soldier_limit mywar.dummy run function mywar:entity/player/trade/restore