#####
#Decides which soldiers to aggro based off player's team
#Author: DaveHue
#####

execute if entity @s[team=mywar.blue] run function mywar:item/commands/aggro/blue_team
execute if entity @s[team=mywar.red] run function mywar:item/commands/aggro/red_team
execute if entity @s[team=mywar.green] run function mywar:item/commands/aggro/green_team
execute if entity @s[team=mywar.yellow] run function mywar:item/commands/aggro/yellow_team


