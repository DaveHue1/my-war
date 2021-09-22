######
#Tick function for village entity
#Author: Dave Hue
######

execute as @s[tag=!mywar.village_done] at @s run function mywar:entity/village/village

execute as @s[tag=mywar.village_done] run execute as @e[type=item,distance=..300] at @s if predicate mywar:item/deplete_item run function mywar:entity/village/deplete/deplete

