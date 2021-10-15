#####
#Trading with advisor
#Author: DaveHue
#####

#Calculations for collect limit 
scoreboard players reset #mywar.cl_temp mywar.dummy
scoreboard players operation #mywar.cl_temp mywar.dummy = @s mywar.cl 
scoreboard players operation #mywar.cl_temp mywar.dummy -= #mywar.cl_perm mywar.dummy


#Foot soldier
execute if predicate mywar:player/trade/foot_soldier run function mywar:entity/player/trade/foot_soldier/foot_soldier

#Archer
execute if predicate mywar:player/trade/archer run function mywar:entity/player/trade/archer/archer

#Swordsmen
execute if predicate mywar:player/trade/swordsmen run function mywar:entity/player/trade/swordsmen/swordsmen

#Knight
execute if predicate mywar:player/trade/knight run function mywar:entity/player/trade/knight/knight

#Mage
execute if predicate mywar:player/trade/mage run function mywar:entity/player/trade/mage/mage

#Reset scores
scoreboard players reset @s mywar.traded
scoreboard players reset #mywar.cl_temp mywar.dummy
