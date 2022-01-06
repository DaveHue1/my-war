############
#Determines if player is near another home base or not
#Author: DaveHue
############

#Detects if it is too close to another home base
execute if entity @e[type=marker,tag=mywar.home_base,distance=..50] run function mywar:technical/home_base/restart

#Detects if it is not too close to another home base
execute unless entity @e[type=marker,tag=mywar.home_base,distance=..50] run function mywar:technical/home_base/gen/generation