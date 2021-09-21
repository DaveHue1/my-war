######
#Adds scoreboard objectives
#Author: DaveHue
######

#Collect objectives
scoreboard objectives add mywar.c_fs_i dummy
scoreboard objectives add mywar.c_fs_z dummy 

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
