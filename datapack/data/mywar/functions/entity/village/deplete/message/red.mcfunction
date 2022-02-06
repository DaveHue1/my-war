############
#Message for killing a red team soldier
#Author: DaveHue
############

execute if entity @s[team=!mywar.red] if entity @e[tag=mywar.village,type=marker,tag=mywar.red,sort=nearest,limit=1,distance=..200,scores={mywar.er=1..}] run tellraw @s {"translate":"mywar.message.deplete.enemies_remaining","with":[{"score":{"name":"@e[tag=mywar.village,type=marker,sort=nearest,limit=1,distance=..200]","objective":"mywar.er"},"color":"yellow"}],"color":"red"}
advancement revoke @s only mywar:player/kill/red_team 