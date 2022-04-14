#####
#Setup player team stuff
#Author: DaveHue
#####

#Rolls a random number to pick a team from
execute store result score #mywar.team_chance mywar.dummy run loot spawn 0 0 0 loot mywar:chance/team_chance

#Join a team based on the random score the player got 
function mywar:technical/player/team/join

#Message for which team the player joined
function mywar:technical/player/team/message