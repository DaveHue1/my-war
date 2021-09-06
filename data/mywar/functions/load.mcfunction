##############
#Load function
#Author: DaveHue
##############

#Adds scoreboard objectives
scoreboard objectives add mywar.trig.ss trigger
trigger enable @a mywar.trig.ss

#Warning for spawning home base structure
tag @a[sort=random,limit=1,tag=!mywwar.generate.done] add mywar.warning
tellraw @a[tag=mywar.warning,tag=!mywar.generate.done] [{"text":"Warning: Home base will replace existing blocks","color":"red"}]
tellraw @a[tag=mywar.warning,tag=!mywar.generate.done] [{"text":"[Click Here to Generate Home Base]","color":"green","clickEvent":{"action":"run_command","value":"/trigger set @s mywar.trigger.ss 1"}}]
