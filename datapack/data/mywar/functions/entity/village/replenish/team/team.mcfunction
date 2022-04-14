################
#Decides which team for soldier to join when replenishing
#Author: DaveHue
###############

#Enemy team
execute if entity @s[tag=!mywar.blue,tag=!mywar.red,tag=!mywar.yellow,tag=!mywar.green] run data merge entity @e[tag=mywar.soldier,team=!mywar.blue,team=!mywar.red,team=!mywar.yellow,team=!mywar.green,team=!mywar.enemy,sort=nearest,limit=1] {DeathLootTable:"mywar:item/deplete/deplete_enemy"}
execute if entity @s[tag=!mywar.blue,tag=!mywar.red,tag=!mywar.yellow,tag=!mywar.green] run team join mywar.enemy @e[tag=mywar.soldier,team=!mywar.blue,team=!mywar.red,team=!mywar.yellow,team=!mywar.green,team=!mywar.enemy,sort=nearest,limit=1]

#Blue team
execute if entity @s[tag=mywar.blue] run data merge entity @e[tag=mywar.soldier,team=!mywar.blue,team=!mywar.red,team=!mywar.yellow,team=!mywar.green,team=!mywar.enemy,sort=nearest,limit=1] {DeathLootTable:"mywar:item/deplete/deplete_blue"}
execute if entity @s[tag=mywar.blue] run team join mywar.blue @e[tag=mywar.soldier,team=!mywar.blue,team=!mywar.red,team=!mywar.yellow,team=!mywar.green,team=!mywar.enemy,sort=nearest,limit=1]

#Red team
execute if entity @s[tag=mywar.red] run data merge entity @e[tag=mywar.soldier,team=!mywar.blue,team=!mywar.red,team=!mywar.yellow,team=!mywar.green,team=!mywar.enemy,sort=nearest,limit=1] {DeathLootTable:"mywar:item/deplete/deplete_red"}
execute if entity @s[tag=mywar.red] run team join mywar.red @e[tag=mywar.soldier,team=!mywar.blue,team=!mywar.red,team=!mywar.yellow,team=!mywar.green,team=!mywar.enemy,sort=nearest,limit=1]

#Yellow team
execute if entity @s[tag=mywar.yellow] run data merge entity @e[tag=mywar.soldier,team=!mywar.blue,team=!mywar.red,team=!mywar.yellow,team=!mywar.green,team=!mywar.enemy,sort=nearest,limit=1] {DeathLootTable:"mywar:item/deplete/deplete_yellow"}
execute if entity @s[tag=mywar.yellow] run team join mywar.yellow @e[tag=mywar.soldier,team=!mywar.blue,team=!mywar.red,team=!mywar.yellow,team=!mywar.green,team=!mywar.enemy,sort=nearest,limit=1]

#Green team
execute if entity @s[tag=mywar.green] run data merge entity @e[tag=mywar.soldier,team=!mywar.blue,team=!mywar.red,team=!mywar.yellow,team=!mywar.green,team=!mywar.enemy,sort=nearest,limit=1] {DeathLootTable:"mywar:item/deplete/deplete_green"}
execute if entity @s[tag=mywar.green] run team join mywar.green @e[tag=mywar.soldier,team=!mywar.blue,team=!mywar.red,team=!mywar.yellow,team=!mywar.green,team=!mywar.enemy,sort=nearest,limit=1]
