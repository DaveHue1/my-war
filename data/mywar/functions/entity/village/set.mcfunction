#####
#Sets things as players enters village
#Author: Dave Hue
#####

#Enemies remaining bossbar
execute store result score #mywar.enemies_remaining mywar.dummy run scoreboard players get #mywar.spawn_limit mywar.dummy
execute store result bossbar mywar:enemies_remaining value run scoreboard players get #mywar.enemies_remaining mywar.dummy
bossbar set mywar:enemies_remaining name [{"text":"Enemies Remaining: ","color":"red"},{"score":{"name":"#mywar.enemies_remaining","objective":"mywar.dummy"}}]
bossbar set mywar:enemies_remaining visible true

#Sound
playsound minecraft:mywar.war.music master @a[distance=..200] ~ ~ ~

#Tag
tag @s add mywar.village_set
