##############
#Load function
#Author: DaveHue
##############

#Adds scoreboard objectives
##Command objectives
#Spread radius
scoreboard objectives add mywar.spreadlvl dummy
scoreboard objectives add mywar.spreadlvl2 dummy

#Right clicking
scoreboard objectives add mywar.command minecraft.used:minecraft.carrot_on_a_stick

##Objectives for detecting if the structure has been given 
#Home base test
scoreboard objectives add mywar.if_gen dummy
scoreboard players add mywar.if_gen mywar.if_gen 0

#Message for spawning home base structure
execute if score #mywar.if_gen mywar.if_gen matches 0 run tag @a[sort=random,limit=1] add mywar.warning
execute if score #mywar.if_gen mywar.if_gen matches 0 run tellraw @a[tag=mywar.warning] [{"text":"Place down the Home Base structure to start","color":"green"}]
execute if score #mywar.if_gen mywar.if_gen matches 0 run tellraw @a[tag=mywar.warning] [{"text":"Warning: Home base will replace existing blocks, place in clear area.","color":"red"}]
execute if score #mywar.if_gen mywar.if_gen matches 0 run execute as @a[tag=mywar.warning] run function mywar:item/give/home_base
execute if score #mywar.if_gen mywar.if_gen matches 0 run execute as @a[tag=mywar.warning] run scoreboard players set #mywar.if_gen mywar.if_gen 1
