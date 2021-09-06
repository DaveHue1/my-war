##############
#Load function
#Author: DaveHue
##############

#Adds scoreboard objectives
##Objectives for detecting if structure has been given 
scoreboard objectives add mywar.if_gen
scoreboard players add #mywar.if_gen mywar.if_gen 0

#Message for spawning home base structure
execute if score #mywar.if_gen mywar.if_gen matches 0 run tag @a[sort=random,limit=1] add mywar.warning
execute if score #mywar.if_gen mywar.if_gen matches 0 run tellraw @a[tag=mywar.warning] [{"text":"Place down the home base structure to begin","color":"green"}]
execute if score #mywar.if_gen mywar.if_gen matches 0 run tellraw @a[tag=mywar.warning] [{"text":"Warning: Home base will replace existing blocks","color":"red"}]
execute if score #mywar.if_gen mywar.if_gen matches 0 run function mywar:item/give/home_base
execute if score #mywar.if_gen mywar.if_gen matches 0 run scoreboard players set #mywar.if_gen mywar.if_gen 1
