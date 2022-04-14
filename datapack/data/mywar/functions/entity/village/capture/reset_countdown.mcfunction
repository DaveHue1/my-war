#####
#Resets countdown
#Author: Dave Hue
#####

#Message
tellraw @a[sort=nearest,limit=1,distance=..10] {"translate":"mywar.message.village.capture_boundary","color":"red"}

#Reset
scoreboard players set @s mywar.capture 10
