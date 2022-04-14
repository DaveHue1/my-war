#####
#Check to see if a new team has entered the area
#Author: Dave Hue
#####

#Team check
execute if entity @s[tag=mywar.blue] if entity @p[team=!mywar.blue,distance=..300] run function mywar:technical/clocks/village/team/blue_team
execute if entity @s[tag=mywar.red] if entity @p[team=!mywar.red,distance=..300] run function mywar:technical/clocks/village/team/red_team
execute if entity @s[tag=mywar.green] if entity @p[team=!mywar.green,distance=..300] run function mywar:technical/clocks/village/team/green_team
execute if entity @s[tag=mywar.yellow] if entity @p[team=!mywar.yellow,distance=..300] run function mywar:technical/clocks/village/team/yellow_team