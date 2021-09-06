##############
#Load function
#Author: DaveHue
##############

#Warning for spawning home base structure
tag @a[sort=random,limit=1] add mywar.warning
tellraw @a[tag=mywar.warning] [{"text":"Warning: Home base will replace existing blocks","color":"red"}]
tellraw @a[tag=mywar.warning] [{"text":"[Click Here to Generate Home Base]","color":"green","clickEvent":{"action":"run_command","value":"/function mywar:technical/generate"}}]
