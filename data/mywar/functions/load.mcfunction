##############
#Load function
#Author: DaveHue
##############

##Sets default scores
#Conquest level
execute unless score #mywar.conquest_level mywar.dummy matches 0.. run scoreboard players set #mywar.conquest_level mywar.dummy 0

#Spawn count
execute unless score #mywar.spawn_count mywar.dummy matches 0.. run scoreboard players set #mywar.spawn_count mywar.dummy 0

#Spawn limit
scoreboard players set #mywar.spawn_limit mywar.dummy 50

##Adds teams

#Teams
team add mywar.friendly
team add mywar.enemy

#Modifying team characteristics 
team modify mywar.friendly color green
team modify mywar.enemy color red

#Join teams
team join mywar.friendly @a

#Adds scoreboard objectives

#Global scoreboard objective 
scoreboard objectives add mywar.dummy dummy 

##Command objectives
#Spread radius
scoreboard objectives add mywar.spreadlvl dummy

#Right clicking
scoreboard objectives add mywar.command minecraft.used:minecraft.carrot_on_a_stick

##Add item objectives 
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
