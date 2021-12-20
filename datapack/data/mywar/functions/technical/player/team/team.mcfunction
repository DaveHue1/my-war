#####
#Setup player team stuff
#Author: DaveHue
#####

#Rolls a random number to pick a team from
execute store result score #mywar.team_chance mywar.dummy run loot spawn 0 0 0 loot mywar:chance/team_chance

#Join a team based on the random score the player got 
function mywar:technical/player/team/join

#Message for which team the player joined
tellraw @a[team=mywar.red] [{"text":"You have been assigned to the ","color":"yellow"},{"text":"Red","color":"red"},{"text":" team!","color":"yellow"}]
tellraw @a[team=mywar.blue] [{"text":"You have been assigned to the ","color":"yellow"},{"text":"Blue","color":"blue"},{"text":" team!","color":"yellow"}]
tellraw @a[team=mywar.yellow] [{"text":"You have been assigned to the ","color":"yellow"},{"text":"Yellow","color":"yellow"},{"text":" team!","color":"yellow"}]
tellraw @a[team=mywar.green] [{"text":"You have been assigned to the ","color":"yellow"},{"text":"green","color":"green"},{"text":" team!","color":"yellow"}]