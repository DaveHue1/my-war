############
#Sets the spread radius
#Author: DaveHue
############

#Increments spread level
scoreboard players add @s mywar.spreadlvl 1 
tellraw @s[scores={mywar.spreadlvl=1..59}] [{"text":"Spread radius set to","color":"yellow","italic":false},{"text":" "},{"score":{"name":"*","objective":"mywar.spreadlvl"},"color":"yellow","italic":false},{"text":"!"}]

#Resets spread level
tellraw @s[scores={mywar.spreadlvl=60..}] {"text":"Spread limit reached!","color":"red","italic":false}
scoreboard players reset @s[scores={mywar.spreadlvl=60..}] mywar.spreadlvl
