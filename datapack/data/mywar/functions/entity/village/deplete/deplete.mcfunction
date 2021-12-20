#####
#Deplete village level
#Author: DaveHue
#####

#Set score
function mywar:entity/village/deplete/team_check
execute if entity @e[type=marker,sort=nearest,limit=1,tag=mywar.village,scores={mywar.er=1..}] run tellraw @a[sort=nearest,limit=1] [{"text":"Enemies remaining to capture tower: ","color":"red"},{"score":{"name":"@e[type=marker,sort=nearest,limit=1]","objective":"mywar.er"},"color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"yellow"}]}},{"text":"!","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"green"}]}}]

#Kill entity
kill @s
