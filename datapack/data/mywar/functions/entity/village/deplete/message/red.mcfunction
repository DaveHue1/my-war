############
#Message for killing a red team soldier
#Author: DaveHue
############

execute if entity @s[team=!mywar.red] if entity @e[tag=mywar.village,type=marker,tag=mywar.red,sort=nearest,limit=1,distance=..200,scores={mywar.er=1..}] run tellraw @s [{"text":"Enemies remaining to capture tower: ","color":"red"},{"score":{"name":"@e[type=marker,sort=nearest,limit=1]","objective":"mywar.er"},"color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"yellow"}]}},{"text":"!","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"green"}]}}]
advancement revoke @s only mywar:player/kill/red_team 