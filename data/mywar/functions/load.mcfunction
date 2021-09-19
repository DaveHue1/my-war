##############
#Load function
#Author: DaveHue
##############

##Adds scoreboard objectives
#Collect objectives
scoreboard objectives add mywar.c_fs dummy 

#Capture objective
scoreboard objectives add mywar.capture dummy

#Global scoreboard objective 
scoreboard objectives add mywar.dummy dummy 

#Command objectives
#Spread radius
scoreboard objectives add mywar.spreadlvl dummy

#Right clicking
scoreboard objectives add mywar.command minecraft.used:minecraft.carrot_on_a_stick

#Add item objectives 
#Village tracker coordinates
scoreboard objectives add mywar.vt.x dummy
scoreboard objectives add mywar.vt.y dummy
scoreboard objectives add mywar.vt.z dummy

##Detecting if the structure has been given 
scoreboard players add #mywar.if_gen mywar.dummy 0

#Message for spawning home base structure
execute if score #mywar.if_gen mywar.dummy matches 0 run tag @a[sort=random,limit=1] add mywar.warning
execute if score #mywar.if_gen mywar.dummy matches 0 run tellraw @a[tag=mywar.warning] [{"text":"Place down the Home Base structure to start","color":"green"}]
execute if score #mywar.if_gen mywar.dummy matches 0 run tellraw @a[tag=mywar.warning] [{"text":"Warning: Home base will replace existing blocks, place in clear area.","color":"red"}]
execute if score #mywar.if_gen mywar.dummy matches 0 run execute as @a[tag=mywar.warning] run function mywar:item/give/home_base
execute if score #mywar.if_gen mywar.dummy matches 0 run execute as @a[tag=mywar.warning] run scoreboard players set #mywar.if_gen mywar.dummy 1

##Set up clocks
#1 second clock
function mywar:clocks/one_second_clock

#Ten second clock
function mywar:clocks/ten_second_clock

##Sets default scores
#Conquest level
execute unless score #mywar.conquest_level mywar.dummy matches 0.. run scoreboard players set #mywar.conquest_level mywar.dummy 10
execute unless score #mywar.current_conquest_level mywar.dummy matches 0.. run scoreboard players set #mywar.conquest_level mywar.dummy 0

#Spawn count
execute unless score #mywar.spawn_count mywar.dummy matches 0.. run scoreboard players set #mywar.spawn_count mywar.dummy 0

#Spawn limit
execute unless score #mywar.spawn_limit mywar.dummy matches 0.. run scoreboard players set #mywar.spawn_limit mywar.dummy 50

#Enemies remaining 
execute unless score #mywar.enemies_remaining mywar.dummy matches 0.. run scoreboard players set #mywar.enemies_remaining mywar.dummy 0

##Bossbars
#Conquest level
bossbar add mywar:conquest_level [{"text":"Conquest Level: ","color":"yellow"},{"score":{"name":"#mywar.current_conquest_level","objective":"mywar.dummy"}}]
execute store result bossbar mywar:conquest_level max run scoreboard players get #mywar.conquest_level mywar.dummy
execute store result bossbar mywar:conquest_level value run scoreboard players get #mywar.current_conquest_level mywar.dummy
bossbar set mywar:conquest_level players @a 

#Enemies remaining
bossbar add mywar:enemies_remaining [{"text":"Enemies Remaining: ","color":"red"},{"score":{"name":"#mywar.enemies_remaining","objective":"mywar.dummy"}}]
execute store result bossbar mywar:enemies_remaining max run scoreboard players get #mywar.enemies_remaining mywar.dummy
bossbar set mywar:enemies_remaining players @a 
bossbar set mywar:enemies_remaining visible false

##Adds teams

#Teams
team add mywar.friendly
team add mywar.enemy

#Modifying team characteristics 
team modify mywar.friendly color green
team modify mywar.enemy color red

#Join teams
team join mywar.friendly @a


