#####
#Sends a message if the player failed to invade village
#Author: Dave Hue
#####

#Message for player villages
execute if entity @s[team=mywar.red] if entity @e[tag=mywar.village_captured,tag=mywar.red,tag=!mywar.enemy,tag=!mywar.invaded,distance=..300,sort=nearest,limit=1] run tellraw @s {"translate":"mywar.message.player.invade.invade_fail.player","color":"red"}
execute if entity @s[team=mywar.blue] if entity @e[tag=mywar.village_captured,tag=mywar.blue,tag=!mywar.enemy,tag=!mywar.invaded,distance=..300,sort=nearest,limit=1] run tellraw @s {"translate":"mywar.message.player.invade.invade_fail.player","color":"red"}
execute if entity @s[team=mywar.yellow] if entity @e[tag=mywar.village_captured,tag=mywar.yellow,tag=!mywar.enemy,tag=!mywar.invaded,distance=..300,sort=nearest,limit=1] run tellraw @s {"translate":"mywar.message.player.invade.invade_fail.player","color":"red"}
execute if entity @s[team=mywar.green] if entity @e[tag=mywar.village_captured,tag=mywar.green,tag=!mywar.enemy,tag=!mywar.invaded,distance=..300,sort=nearest,limit=1] run tellraw @s {"translate":"mywar.message.player.invade.invade_fail.player","color":"red"}

#Message for enemy villages
execute if entity @e[tag=mywar.village,tag=!mywar.village_captured,tag=!mywar.red,tag=!mywar.blue,tag=!mywar.green,tag=!mywar.yellow,distance=..300,sort=nearest,limit=1] run tellraw @s {"translate":"mywar.message.player.invade.invade_fail.enemy","color":"red"}