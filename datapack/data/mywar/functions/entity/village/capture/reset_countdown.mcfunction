#####
#Resets countdown
#Author: Dave Hue
#####

#Message
tellraw @a[sort=nearest,limit=1,distance=..10] {"text":"Moving out of capture boundary!","color":"red"}

#Reset
scoreboard players set @s mywar.capture 10
