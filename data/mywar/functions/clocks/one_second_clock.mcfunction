######
#One second clock
#Author: DaveHue
######

execute as @e[type=marker,tag=mywar.village,tag=mywar.village_done,tag=!mywar.village_captured] at @s run function mywar:entity/village/capture/capture

schedule function mywar:clocks/one_second_clock 1s