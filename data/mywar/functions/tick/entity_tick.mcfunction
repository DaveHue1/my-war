#########
#Ticking functions for entities
#Author: DaveHue
#########

#Home base gen
execute as @s[tag=mywar.generate] at @s run function mywar:entity/home_base_gen

#Village 
execute as @s[tag=mywar.village,tag=!mywar.village_done] at @s run function mywar:entity/village/village
