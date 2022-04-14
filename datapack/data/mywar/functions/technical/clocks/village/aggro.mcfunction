#####
#Aggros all soldiers in village
#Author: Dave Hue
#####

#Aggros soldiers on enemy team
execute if entity @e[team=mywar.enemy,distance=..300,tag=mywar.soldier] run function mywar:entity/village/aggro/aggro_enemy

#Aggros soldiers on red team
execute if entity @e[team=mywar.red,distance=..300,tag=mywar.soldier] run function mywar:entity/village/aggro/aggro_red

#Aggros soldiers on blue team
execute if entity @e[team=mywar.blue,distance=..300,tag=mywar.soldier] run function mywar:entity/village/aggro/aggro_blue

#Aggros soldiers on yellow team
execute if entity @e[team=mywar.yellow,distance=..300,tag=mywar.soldier] run function mywar:entity/village/aggro/aggro_yellow

#Aggros soldiers on green team
execute if entity @e[team=mywar.green,distance=..300,tag=mywar.soldier] run function mywar:entity/village/aggro/aggro_green