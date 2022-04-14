#####
#Decides which soldiers to aggro based off player's team
#Author: DaveHue
#####

execute if entity @s[team=mywar.blue] run function mywar:item/controller/aggro/blue_team
execute if entity @s[team=mywar.red] run function mywar:item/controller/aggro/red_team
execute if entity @s[team=mywar.green] run function mywar:item/controller/aggro/green_team
execute if entity @s[team=mywar.yellow] run function mywar:item/controller/aggro/yellow_team

tellraw @s {"translate":"mywar.message.player.aggro","color":"yellow"}


