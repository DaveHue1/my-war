############
#Message for killing a blue team soldier
#Author: DaveHue
############

execute if entity @s[team=!mywar.blue] if entity @e[tag=mywar.village,type=marker,tag=mywar.blue,sort=nearest,limit=1,distance=..200,scores={mywar.er=1..}] run tellraw @s [{"text":"Enemies remaining to capture tower: ","color":"red"},{"score":{"name":"@e[type=marker,sort=nearest,limit=1]","objective":"mywar.er"},"color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"yellow"}]}},{"text":"!","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"green"}]}}]
advancement revoke @s only mywar:player/kill/blue_team 