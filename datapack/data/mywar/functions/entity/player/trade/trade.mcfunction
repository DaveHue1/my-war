#####
#Trading with advisor
#Author: DaveHue
#####

#Foot soldier
execute if predicate mywar:player/trade/foot_soldier run function mywar:entity/player/trade/foot_soldier/foot_soldier

#Reset trade score
scoreboard players reset @s mywar.trade