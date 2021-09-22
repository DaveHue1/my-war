######
#One second clock
#Author: DaveHue
######

execute as @e[type=marker,tag=mywar.village,tag=mywar.village_done,tag=!mywar.village_captured] at @s run function mywar:entity/village/capture/capture

execute as @e[type=marker,tag=mywar.village,tag=mywar.village_done,tag=!mywar.village_set] at @s if entity @a[distance=..200] run function mywar:entity/village/set

scoreboard players remove @a[scores={mywar.tax_limit=1..}] mywar.tax_limit 1 

schedule function mywar:clocks/one_second_clock 1s
