#####
#Countdown timer for capture
#Author: Dave Hue
#####

#Initializes score
execute unless score @s mywar.capture matches 0.. run scoreboard players set @s mywar.capture 10 

#Adds to timer
scoreboard players remove @s mywar.capture 1 

##Messages
#Message for countdown
tellraw @p {"translate":"mywar.message.village.capture","with":[{"score":{"name":"@s","objective":"mywar.capture"},"color":"yellow"}],"color":"green"}

#Message for capture
execute if score @s mywar.capture matches 0 run tellraw @a[distance=..200] {"translate":"mywar.message.village.capture.final","color":"blue"}

#Capture sequence 
execute if score @s mywar.capture matches 0 run function mywar:entity/village/capture/claim




