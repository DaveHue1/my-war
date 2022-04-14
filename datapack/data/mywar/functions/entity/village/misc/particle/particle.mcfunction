#########
#Display village tower particles
#Author: DaveHue
#########

execute if entity @s[tag=!mywar.red,tag=!mywar.blue,tag=!mywar.green,tag=!mywar.yellow] run particle dust 0.388 0.063 0.051 1 ~ ~25 ~ 0 10 0 1 25 normal
execute if entity @s[tag=mywar.red] run particle dust 1.000 0.122 0.122 1 ~ ~25 ~ 0 10 0 1 25 normal
execute if entity @s[tag=mywar.blue] run particle dust 0.129 0.188 1.000 1 ~ ~25 ~ 0 10 0 1 25 normal
execute if entity @s[tag=mywar.green] run particle dust 0.180 0.529 0.051 1 ~ ~25 ~ 0 10 0 1 25 normal
execute if entity @s[tag=mywar.yellow] run particle dust 0.839 0.839 0.169 1 ~ ~25 ~ 0 10 0 1 25 normal