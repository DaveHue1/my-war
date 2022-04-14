
#Spawn limit
scoreboard players operation @s mywar.er = @a[sort=nearest,limit=1,team=!mywar.green] mywar.spawn_limit

#Sounds
execute as @a[distance=..300] at @s run playsound minecraft:mywar.war.music music @s ~ ~ ~

#Tags
tag @s remove mywar.village_captured
tag @s add mywar.invaded
