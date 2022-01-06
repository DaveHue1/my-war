######
#Joins soldier to team when deploying 
#Author: Dave Hue
######

#Blue team
execute if entity @s[team=mywar.blue] run execute as @e[tag=mywar.soldier,team=!mywar.blue,team=!mywar.red,team=!mywar.yellow,team=!mywar.green,team=!mywar.enemy,sort=nearest,distance=..5] run data merge entity @s {DeathLootTable:"mywar:item/deplete/deplete_blue"}
execute if entity @s[team=mywar.blue] run team join mywar.blue @e[tag=mywar.soldier,team=!mywar.blue,team=!mywar.red,team=!mywar.yellow,team=!mywar.green,team=!mywar.enemy,sort=nearest,distance=..5]

#Red team
execute if entity @s[team=mywar.red] run execute as @e[tag=mywar.soldier,team=!mywar.blue,team=!mywar.red,team=!mywar.yellow,team=!mywar.green,team=!mywar.enemy,sort=nearest,distance=..5] run data merge entity @s {DeathLootTable:"mywar:item/deplete/deplete_red"}
execute if entity @s[team=mywar.red] run team join mywar.red @e[tag=mywar.soldier,team=!mywar.blue,team=!mywar.red,team=!mywar.yellow,team=!mywar.green,team=!mywar.enemy,sort=nearest,distance=..5]

#Yellow team
execute if entity @s[team=mywar.yellow] run execute as @e[tag=mywar.soldier,team=!mywar.blue,team=!mywar.red,team=!mywar.yellow,team=!mywar.green,team=!mywar.enemy,sort=nearest,distance=..5] run data merge entity @s {DeathLootTable:"mywar:item/deplete/deplete_yellow"}
execute if entity @s[team=mywar.yellow] run team join mywar.yellow @e[tag=mywar.soldier,team=!mywar.blue,team=!mywar.red,team=!mywar.yellow,team=!mywar.green,team=!mywar.enemy,sort=nearest,distance=..5]

#Green team
execute if entity @s[team=mywar.green] run execute as @e[tag=mywar.soldier,team=!mywar.blue,team=!mywar.red,team=!mywar.yellow,team=!mywar.green,team=!mywar.enemy,sort=nearest,distance=..5] run data merge entity @s {DeathLootTable:"mywar:item/deplete/deplete_green"}
execute if entity @s[team=mywar.green] run team join mywar.green @e[tag=mywar.soldier,team=!mywar.blue,team=!mywar.red,team=!mywar.yellow,team=!mywar.green,team=!mywar.enemy,sort=nearest,distance=..5]
