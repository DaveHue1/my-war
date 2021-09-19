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
tellraw @a[distance=..200] [{"text":"Capturing village in ","color":"yellow"},{"score":{"name":"@s","objective":"mywar.capture"},"color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"yellow"}]}},{"text":". . .","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"yellow"}]}}]

#Message for capture
execute if score @s mywar.capture matches 0 run tellraw @a[distance=..200] {"text":"Village captured!","color":"green"}

#Capture sequence 
execute if score @s mywar.capture matches 0 run function mywar:entity/village/capture/claim

