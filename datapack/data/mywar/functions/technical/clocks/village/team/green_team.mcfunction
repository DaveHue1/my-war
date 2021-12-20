
#Spawn limit
scoreboard players operation @s mywar.er = @a[sort=nearest,limit=1,team=!mywar.green] mywar.spawn_limit

#Sounds
playsound minecraft:mywar.war.music music @a[distance=..300] ~ ~ ~

#Tags
tag @s remove mywar.village_captured
tag @s add mywar.invaded
