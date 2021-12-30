###############
#Gets the correct player's current spawn limit
#Author: DaveHue
###############

execute if entity @s[tag=!mywar.blue,tag=!mywar.red,tag=!mywar.green,tag=!mywar.yellow] run execute store result score #mywar.replenish_count2 mywar.dummy run scoreboard players get @a[sort=nearest,limit=1] mywar.spawn_limit
execute if entity @s[tag=mywar.blue] run execute store result score #mywar.replenish_count2 mywar.dummy run scoreboard players get @a[sort=nearest,limit=1,team=!mywar.blue] mywar.spawn_limit
execute if entity @s[tag=mywar.red] run execute store result score #mywar.replenish_count2 mywar.dummy run scoreboard players get @a[sort=nearest,limit=1,team=!mywar.red] mywar.spawn_limit
execute if entity @s[tag=mywar.green] run execute store result score #mywar.replenish_count2 mywar.dummy run scoreboard players get @a[sort=nearest,limit=1,team=!mywar.green] mywar.spawn_limit
execute if entity @s[tag=mywar.yellow] run execute store result score #mywar.replenish_count2 mywar.dummy run scoreboard players get @a[sort=nearest,limit=1,team=!mywar.yellow] mywar.spawn_limit
