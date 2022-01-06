#####
#Knight soldier collect
#Author: Dave Hue
#####

#Knight
scoreboard players add #mywar.temp.collect.knight mywar.dummy 1 
scoreboard players operation @a[predicate=mywar:controller/collect,sort=nearest,limit=1] mywar.c_knight += #mywar.temp.collect.knight mywar.dummy
scoreboard players reset #mywar.temp.collect.knight mywar.dummy
