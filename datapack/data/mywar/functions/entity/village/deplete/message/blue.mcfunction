############
#Message for killing a blue team soldier
#Author: DaveHue
############

execute if entity @s[team=!mywar.blue] if entity @e[tag=mywar.village,type=marker,tag=mywar.blue,sort=nearest,limit=1,distance=..200,scores={mywar.er=1..}] run tellraw @s {"translate":"mywar.message.deplete.enemies_remaining","with":[{"score":{"name":"@e[tag=mywar.village,type=marker,sort=nearest,limit=1]","objective":"mywar.er"},"color":"yellow"}],"color":"red"}
advancement revoke @s only mywar:player/kill/blue_team 