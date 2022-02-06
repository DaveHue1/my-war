#########
#Ticking functions for entities
#Author: DaveHue
#########

#Home base gen
execute if entity @s[tag=mywar.generate] run function mywar:entity/home_base_gen

#Village 
execute if entity @s[tag=mywar.village] run function mywar:entity/village/tick
