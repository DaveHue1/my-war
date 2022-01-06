#####
#Replenish soldiers in village
#Author: Dave Hue
#####

execute as @s[tag=!mywar.village_captured] at @s run function mywar:entity/village/replenish/replenish
execute as @s[tag=!mywar.invaded] at @s run function mywar:entity/village/replenish/replenish 