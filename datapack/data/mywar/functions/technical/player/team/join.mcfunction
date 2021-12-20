#####
#Team join
#Author: DaveHue
#####

#Join 
execute if score #mywar.team_chance mywar.dummy matches 1 run team join mywar.red @s
execute if score #mywar.team_chance mywar.dummy matches 2 run team join mywar.blue @s
execute if score #mywar.team_chance mywar.dummy matches 3 run team join mywar.green @s
execute if score #mywar.team_chance mywar.dummy matches 4 run team join mywar.yellow @s

#Reset team chance score
scoreboard players reset #mywar.team_chance mywar.dummy