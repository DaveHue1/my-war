#########
#Ticking functions for entities
#Author: DaveHue
#########

#Home base gen
execute as @s[tag=mywar.generate] at @s run function mywar:entity/home_base_gen

#Village 
execute as @s[tag=mywar.village] at @s run function mywar:entity/village/tick

#Stairs
execute as @e[tag=mywar.stairs] at @s run function mywar:entity/stairs/stairs