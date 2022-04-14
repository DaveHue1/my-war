#####
#Adds team stuff
#Author: DaveHue
#####

#Add teams
team add mywar.red
team add mywar.blue
team add mywar.green
team add mywar.yellow
team add mywar.enemy

##Modifying team characteristics 
#Color 
team modify mywar.red color red 
team modify mywar.blue color blue
team modify mywar.green color green
team modify mywar.yellow color yellow
team modify mywar.enemy color dark_red

#Collision
team modify mywar.red collisionRule pushOtherTeams
team modify mywar.blue collisionRule pushOtherTeams
team modify mywar.green collisionRule pushOtherTeams
team modify mywar.yellow collisionRule pushOtherTeams

