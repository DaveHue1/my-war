################
#Spread the members of the team
#Author: DaveHue
###############

#Spread enemy team
execute if entity @s[tag=!mywar.red,tag=!mywar.blue,tag=!mywar.green,tag=!mywar.yellow] run function mywar:entity/village/replenish/team/spread/teams/enemy_team

#Spread red team
execute if entity @s[tag=mywar.red] run function mywar:entity/village/replenish/team/spread/teams/red_team

#Spread blue team
execute if entity @s[tag=mywar.yellow] run function mywar:entity/village/replenish/team/spread/teams/yellow_team

#Spread green team
execute if entity @s[tag=mywar.green] run function mywar:entity/village/replenish/team/spread/teams/green_team

#Spread blue team
execute if entity @s[tag=mywar.blue] run function mywar:entity/village/replenish/team/spread/teams/blue_team