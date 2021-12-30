###############
#Split the amount of soldiers to spawn
#Author: DaveHue
###############

execute if entity @s[tag=mywar.blue] run scoreboard players operation @a[sort=nearest,limit=1,team=!mywar.blue] mywar.dummy = #mywar.replenish_limit mywar.dummy
execute if entity @s[tag=mywar.blue] run scoreboard players operation @a[sort=nearest,limit=1,team=!mywar.blue] mywar.dummy /= @a[sort=nearest,limit=1] mywar.spawn_count

execute if entity @s[tag=mywar.red] run scoreboard players operation @a[sort=nearest,limit=1,team=!mywar.red] mywar.dummy = #mywar.replenish_limit mywar.dummy
execute if entity @s[tag=mywar.red] run scoreboard players operation @a[sort=nearest,limit=1,team=!mywar.red] mywar.dummy /= @a[sort=nearest,limit=1] mywar.spawn_count

execute if entity @s[tag=mywar.green] run scoreboard players operation @a[sort=nearest,limit=1,team=!mywar.green] mywar.dummy = #mywar.replenish_limit mywar.dummy
execute if entity @s[tag=mywar.green] run scoreboard players operation @a[sort=nearest,limit=1,team=!mywar.green] mywar.dummy /= @a[sort=nearest,limit=1] mywar.spawn_count

execute if entity @s[tag=mywar.yellow] run scoreboard players operation @a[sort=nearest,limit=1,team=!mywar.yellow] mywar.dummy = #mywar.replenish_limit mywar.dummy
execute if entity @s[tag=mywar.yellow] run scoreboard players operation @a[sort=nearest,limit=1,team=!mywar.yellow] mywar.dummy /= @a[sort=nearest,limit=1] mywar.spawn_count

execute if entity @s[tag=!mywar.yellow,tag=!mywar.blue,tag=!mywar.red,tag=!mywar.green] run scoreboard players operation @a[sort=nearest,limit=1] mywar.dummy = #mywar.replenish_limit mywar.dummy
execute if entity @s[tag=!mywar.yellow,tag=!mywar.blue,tag=!mywar.red,tag=!mywar.green] run scoreboard players operation @a[sort=nearest,limit=1] mywar.dummy /= @a[sort=nearest,limit=1] mywar.spawn_count
