########
#Converts enemy soldiers to your team
#Author: DaveHue
########

#Clears any previous team
tag @s remove mywar.blue
tag @s remove mywar.red
tag @s remove mywar.yellow
tag @s remove mywar.green

#Join the conquering team
execute if entity @a[sort=nearest,limit=1,team=mywar.blue] run tag @s add mywar.blue
execute if entity @a[sort=nearest,limit=1,team=mywar.red] run tag @s add mywar.red
execute if entity @a[sort=nearest,limit=1,team=mywar.yellow] run tag @s add mywar.yellow
execute if entity @a[sort=nearest,limit=1,team=mywar.green] run tag @s add mywar.green

#Modify soldier loot tables
execute if entity @s[tag=mywar.blue] run execute as @e[tag=mywar.soldier,team=!mywar.blue,distance=..200] run data merge entity @s {DeathLootTable:"mywar:item/deplete/deplete_blue"}
execute if entity @s[tag=mywar.red] run execute as @e[tag=mywar.soldier,team=!mywar.red,distance=..200] run data merge entity @s {DeathLootTable:"mywar:item/deplete/deplete_red"}
execute if entity @s[tag=mywar.green] run execute as @e[tag=mywar.soldier,team=!mywar.green,distance=..200] run data merge entity @s {DeathLootTable:"mywar:item/deplete/deplete_green"}
execute if entity @s[tag=mywar.yellow] run execute as @e[tag=mywar.soldier,team=!mywar.yellow,distance=..200] run data merge entity @s {DeathLootTable:"mywar:item/deplete/deplete_yellow"}

#Convert enemy soldiers
execute if entity @s[tag=mywar.blue] run team join mywar.blue @e[tag=mywar.soldier,team=!mywar.blue,distance=..200]
execute if entity @s[tag=mywar.red] run team join mywar.red @e[tag=mywar.soldier,team=!mywar.red,distance=..200]
execute if entity @s[tag=mywar.yellow] run team join mywar.yellow @e[tag=mywar.soldier,team=!mywar.yellow,distance=..200]
execute if entity @s[tag=mywar.green] run team join mywar.green @e[tag=mywar.soldier,team=!mywar.green,distance=..200]

#Convert enemy villagers
execute if entity @s[tag=mywar.blue] run team join mywar.blue @e[type=villager,team=!mywar.blue,distance=..200]
execute if entity @s[tag=mywar.red] run team join mywar.red @e[type=villager,team=!mywar.red,distance=..200]
execute if entity @s[tag=mywar.yellow] run team join mywar.yellow @e[type=villager,team=!mywar.yellow,distance=..200]
execute if entity @s[tag=mywar.green] run team join mywar.green @e[type=villager,team=!mywar.green,distance=..200]








