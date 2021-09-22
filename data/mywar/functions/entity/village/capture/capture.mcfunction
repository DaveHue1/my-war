#####
#Capture function
#Author: Dave Hue
#####

#If player is in radius
execute if score @s mywar.er matches 0 if entity @a[distance=..3] run function mywar:entity/village/capture/countdown

#If player is not in radius
execute if score @s mywar.er matches 0 unless entity @a[distance=..3] run function mywar:entity/village/capture/reset_countdown
