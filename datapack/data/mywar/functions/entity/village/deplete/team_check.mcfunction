#########
#Check what team the village is currently under
#Author: DaveHue
#########
execute if entity @s[predicate=mywar:item/deplete/deplete_enemy] if score @e[tag=mywar.village,sort=nearest,limit=1,tag=!mywar.red,tag=!mywar.blue,tag=!mywar.green,tag=!mywar.yellow,distance=..200] mywar.er matches 1.. run scoreboard players remove @e[tag=mywar.village,sort=nearest,limit=1,tag=!mywar.blue,tag=!mywar.red,tag=!mywar.green,tag=!mywar.yellow,distance=..200] mywar.er 1

execute if entity @s[predicate=mywar:item/deplete/deplete_red] if score @e[tag=mywar.village,sort=nearest,limit=1,tag=mywar.red,distance=..200] mywar.er matches 1.. run scoreboard players remove @e[tag=mywar.village,sort=nearest,limit=1,tag=mywar.red,distance=..200] mywar.er 1

execute if entity @s[predicate=mywar:item/deplete/deplete_yellow] if score @e[tag=mywar.village,sort=nearest,limit=1,tag=mywar.yellow,distance=..200] mywar.er matches 1.. run scoreboard players remove @e[tag=mywar.village,sort=nearest,limit=1,tag=mywar.yellow,distance=..200] mywar.er 1

execute if entity @s[predicate=mywar:item/deplete/deplete_green] if score @e[tag=mywar.village,sort=nearest,limit=1,tag=mywar.green,distance=..200] mywar.er matches 1.. run scoreboard players remove @e[tag=mywar.village,sort=nearest,limit=1,tag=mywar.green,distance=..200] mywar.er 1

execute if entity @s[predicate=mywar:item/deplete/deplete_blue] if score @e[tag=mywar.village,sort=nearest,limit=1,tag=mywar.blue,distance=..200] mywar.er matches 1.. run scoreboard players remove @e[tag=mywar.village,sort=nearest,limit=1,tag=mywar.blue,distance=..200] mywar.er 1
