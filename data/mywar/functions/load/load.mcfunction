##############
#Load function
#Author: DaveHue
##############

#Data
function mywar:load/data

#Scoreboard
function mywar:load/scoreboard

##Detecting if the structure has been given 
scoreboard players add #mywar.if_gen mywar.dummy 0

#Message for spawning home base structure
execute if score #mywar.if_gen mywar.dummy matches 0 run tag @a[sort=random,limit=1] add mywar.warning
execute if score #mywar.if_gen mywar.dummy matches 0 run tellraw @a[tag=mywar.warning] [{"text":"Place down the Home Base structure to start","color":"green"}]
execute if score #mywar.if_gen mywar.dummy matches 0 run tellraw @a[tag=mywar.warning] [{"text":"Warning: Home base will replace existing blocks, place in clear area.","color":"red"}]
execute if score #mywar.if_gen mywar.dummy matches 0 run execute as @a[tag=mywar.warning] run function mywar:item/give/home_base
execute if score #mywar.if_gen mywar.dummy matches 0 run execute as @a[tag=mywar.warning] run scoreboard players set #mywar.if_gen mywar.dummy 1

#Clocks
function mywar:load/clocks

#Bossbars
function mywar:load/bossbars

#Teams
function mywar:load/team


