#########
#Description: Spreads units around player 
#Author: Dave Hue
#########

scoreboard players operation #mywar.spread mywar.spreadlvl = @s mywar.spreadlvl
execute as @s[team=mywar.red] run tp @e[type=!player,type=!villager,team=mywar.red,sort=nearest,distance=..100] @s
execute as @s[team=mywar.blue] run tp @e[type=!player,type=!villager,team=mywar.blue,sort=nearest,distance=..100] @s
execute as @s[team=mywar.green] run tp @e[type=!player,type=!villager,team=mywar.green,sort=nearest,distance=..100] @s
execute as @s[team=mywar.yellow] run tp @e[type=!player,type=!villager,team=mywar.yellow,sort=nearest,distance=..100] @s

execute as @s[scores={mywar.spreadlvl=64..127},team=mywar.red] at @s run execute as @e[type=!player,type=!villager,team=mywar.red,sort=nearest,distance=..100] at @s run spreadplayers ~ ~ 0 64 false @s
execute as @s[scores={mywar.spreadlvl=64..127},team=mywar.blue] at @s run execute as @e[type=!player,type=!villager,team=mywar.blue,sort=nearest,distance=..100] at @s run spreadplayers ~ ~ 0 64 false @s
execute as @s[scores={mywar.spreadlvl=64..127},team=mywar.green] at @s run execute as @e[type=!player,type=!villager,team=mywar.green,sort=nearest,distance=..100] at @s run spreadplayers ~ ~ 0 64 false @s
execute as @s[scores={mywar.spreadlvl=64..127},team=mywar.yellow] at @s run execute as @e[type=!player,type=!villager,team=mywar.yellow,sort=nearest,distance=..100] at @s run spreadplayers ~ ~ 0 64 false @s
execute as @s[scores={mywar.spreadlvl=64..127}] at @s run scoreboard players remove @s[scores={mywar.spreadlvl=64..127}] mywar.spreadlvl 64

execute as @s[scores={mywar.spreadlvl=32..63},team=mywar.red] at @s run execute as @e[type=!player,type=!villager,team=mywar.red,sort=nearest,distance=..100] at @s run spreadplayers ~ ~ 0 32 false @s
execute as @s[scores={mywar.spreadlvl=32..63},team=mywar.blue] at @s run execute as @e[type=!player,type=!villager,team=mywar.blue,sort=nearest,distance=..100] at @s run spreadplayers ~ ~ 0 32 false @s
execute as @s[scores={mywar.spreadlvl=32..63},team=mywar.green] at @s run execute as @e[type=!player,type=!villager,team=mywar.green,sort=nearest,distance=..100] at @s run spreadplayers ~ ~ 0 32 false @s
execute as @s[scores={mywar.spreadlvl=32..63},team=mywar.yellow] at @s run execute as @e[type=!player,type=!villager,team=mywar.yellow,sort=nearest,distance=..100] at @s run spreadplayers ~ ~ 0 32 false @s
execute as @s[scores={mywar.spreadlvl=32..63}] at @s run scoreboard players remove @s[scores={mywar.spreadlvl=32..63}] mywar.spreadlvl 32

execute as @s[scores={mywar.spreadlvl=16..31},team=mywar.red] at @s run execute as @e[type=!player,type=!villager,team=mywar.red,sort=nearest,distance=..100] at @s run spreadplayers ~ ~ 0 16 false @s
execute as @s[scores={mywar.spreadlvl=16..31},team=mywar.blue] at @s run execute as @e[type=!player,type=!villager,team=mywar.blue,sort=nearest,distance=..100] at @s run spreadplayers ~ ~ 0 16 false @s
execute as @s[scores={mywar.spreadlvl=16..31},team=mywar.green] at @s run execute as @e[type=!player,type=!villager,team=mywar.green,sort=nearest,distance=..100] at @s run spreadplayers ~ ~ 0 16 false @s
execute as @s[scores={mywar.spreadlvl=16..31},team=mywar.yellow] at @s run execute as @e[type=!player,type=!villager,team=mywar.yellow,sort=nearest,distance=..100] at @s run spreadplayers ~ ~ 0 16 false @s
execute as @s[scores={mywar.spreadlvl=16..31}] at @s run scoreboard players remove @s[scores={mywar.spreadlvl=16..31}] mywar.spreadlvl 16

execute as @s[scores={mywar.spreadlvl=8..15},team=mywar.red] at @s run execute as @e[type=!player,type=!villager,team=mywar.red,sort=nearest,distance=..100] at @s run spreadplayers ~ ~ 0 8 false @s
execute as @s[scores={mywar.spreadlvl=8..15},team=mywar.blue] at @s run execute as @e[type=!player,type=!villager,team=mywar.blue,sort=nearest,distance=..100] at @s run spreadplayers ~ ~ 0 8 false @s
execute as @s[scores={mywar.spreadlvl=8..15},team=mywar.green] at @s run execute as @e[type=!player,type=!villager,team=mywar.green,sort=nearest,distance=..100] at @s run spreadplayers ~ ~ 0 8 false @s
execute as @s[scores={mywar.spreadlvl=8..15},team=mywar.yellow] at @s run execute as @e[type=!player,type=!villager,team=mywar.yellow,sort=nearest,distance=..100] at @s run spreadplayers ~ ~ 0 8 false @s
execute as @s[scores={mywar.spreadlvl=8..15}] at @s run scoreboard players remove @s[scores={mywar.spreadlvl=8..15}] mywar.spreadlvl 8

execute as @s[scores={mywar.spreadlvl=4..7},team=mywar.red] at @s run execute as @e[type=!player,type=!villager,team=mywar.red,sort=nearest,distance=..100] at @s run spreadplayers ~ ~ 0 4 false @s
execute as @s[scores={mywar.spreadlvl=4..7},team=mywar.blue] at @s run execute as @e[type=!player,type=!villager,team=mywar.blue,sort=nearest,distance=..100] at @s run spreadplayers ~ ~ 0 4 false @s
execute as @s[scores={mywar.spreadlvl=4..7},team=mywar.green] at @s run execute as @e[type=!player,type=!villager,team=mywar.green,sort=nearest,distance=..100] at @s run spreadplayers ~ ~ 0 4 false @s
execute as @s[scores={mywar.spreadlvl=4..7},team=mywar.yellow] at @s run execute as @e[type=!player,type=!villager,team=mywar.yellow,sort=nearest,distance=..100] at @s run spreadplayers ~ ~ 0 4 false @s
execute as @s[scores={mywar.spreadlvl=4..7}] at @s run scoreboard players remove @s[scores={mywar.spreadlvl=4..7}] mywar.spreadlvl 4

execute as @s[scores={mywar.spreadlvl=2..3},team=mywar.red] at @s run execute as @e[type=!player,type=!villager,team=mywar.red,sort=nearest,distance=..100] at @s run spreadplayers ~ ~ 0 2 false @s
execute as @s[scores={mywar.spreadlvl=2..3},team=mywar.blue] at @s run execute as @e[type=!player,type=!villager,team=mywar.blue,sort=nearest,distance=..100] at @s run spreadplayers ~ ~ 0 2 false @s
execute as @s[scores={mywar.spreadlvl=2..3},team=mywar.green] at @s run execute as @e[type=!player,type=!villager,team=mywar.green,sort=nearest,distance=..100] at @s run spreadplayers ~ ~ 0 2 false @s
execute as @s[scores={mywar.spreadlvl=2..3},team=mywar.yellow] at @s run execute as @e[type=!player,type=!villager,team=mywar.yellow,sort=nearest,distance=..100] at @s run spreadplayers ~ ~ 0 2 false @s
execute as @s[scores={mywar.spreadlvl=2..3}] at @s run scoreboard players remove @s[scores={mywar.spreadlvl=2..3}] mywar.spreadlvl 2

execute as @s[scores={mywar.spreadlvl=1},team=mywar.red] at @s run execute as @e[type=!player,type=!villager,team=mywar.red,sort=nearest,distance=..100] at @s run spreadplayers ~ ~ 0 1 false @s
execute as @s[scores={mywar.spreadlvl=1},team=mywar.blue] at @s run execute as @e[type=!player,type=!villager,team=mywar.blue,sort=nearest,distance=..100] at @s run spreadplayers ~ ~ 0 1 false @s
execute as @s[scores={mywar.spreadlvl=1},team=mywar.green] at @s run execute as @e[type=!player,type=!villager,team=mywar.green,sort=nearest,distance=..100] at @s run spreadplayers ~ ~ 0 1 false @s
execute as @s[scores={mywar.spreadlvl=1},team=mywar.yellow] at @s run execute as @e[type=!player,type=!villager,team=mywar.yellow,sort=nearest,distance=..100] at @s run spreadplayers ~ ~ 0 1 false @s
execute as @s[scores={mywar.spreadlvl=1}] at @s run scoreboard players remove @s[scores={mywar.spreadlvl=1}] mywar.spreadlvl 1

tellraw @s {"text":"mywar.message.player.spread.spreading_soldiers","color":"yellow"}
playsound minecraft:block.note_block.pling master @s ~ ~ ~

scoreboard players operation @s mywar.spreadlvl = #mywar.spread mywar.spreadlvl
