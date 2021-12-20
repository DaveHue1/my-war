#########
#Display village tower particles
#Author: DaveHue
#########

execute if entity @s[tag=mywar.village_captured] run function mywar:entity/village/misc/particle/captured
execute unless entity @s[tag=mywar.village_captured] run function mywar:entity/village/misc/particle/not_captured