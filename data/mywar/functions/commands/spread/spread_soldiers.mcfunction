#########
#Description: Spreads units around player 
#Author: Dave Hue
#########

tp @e[tag=mywar.soldier,sort=nearest,distance=..100] @s

execute as @s[scores={mywar.dummy=64..127}] at @s run execute as @e[tag=mywar.soldier,sort=nearest,distance=..100] at @s run spreadplayers ~ ~ 0 64 false @s
execute as @s[scores={mywar.dummy=64..127}] at @s run scoreboard players remove @s[scores={mywar.dummy=64..127}] mywar.dummy 64

execute as @s[scores={mywar.dummy=32..63}] at @s run execute as @e[tag=mywar.soldier,sort=nearest,distance=..100] at @s run spreadplayers ~ ~ 0 32 false @s
execute as @s[scores={mywar.dummy=32..63}] at @s run scoreboard players remove @s[scores={mywar.dummy=32..63}] mywar.dummy 32

execute as @s[scores={mywar.dummy=16..31}] at @s run execute as @e[tag=mywar.soldier,sort=nearest,distance=..100] at @s run spreadplayers ~ ~ 0 16 false @s
execute as @s[scores={mywar.dummy=16..31}] at @s run scoreboard players remove @s[scores={mywar.dummy=16..31}] mywar.dummy 16

execute as @s[scores={mywar.dummy=8..15}] at @s run execute as @e[tag=mywar.soldier,sort=nearest,distance=..100] at @s run spreadplayers ~ ~ 0 8 false @s
execute as @s[scores={mywar.dummy=8..15}] at @s run scoreboard players remove @s[scores={mywar.dummy=8..15}] mywar.dummy 8

execute as @s[scores={mywar.dummy=4..7}] at @s run execute as @e[tag=mywar.soldier,sort=nearest,distance=..100] at @s run spreadplayers ~ ~ 0 4 false @s
execute as @s[scores={mywar.dummy=4..7}] at @s run scoreboard players remove @s[scores={mywar.dummy=4..7}] mywar.dummy 4

execute as @s[scores={mywar.dummy=2..3}] at @s run execute as @e[tag=mywar.soldier,sort=nearest,distance=..100] at @s run spreadplayers ~ ~ 0 2 false @s
execute as @s[scores={mywar.dummy=2..3}] at @s run scoreboard players remove @s[scores={mywar.dummy=2..3}] mywar.dummy 2

execute as @s[scores={mywar.dummy=1}] at @s run execute as @e[tag=mywar.soldier,sort=nearest,distance=..100] at @s run spreadplayers ~ ~ 0 1 false @s
execute as @s[scores={mywar.dummy=1}] at @s run scoreboard players remove @s[scores={mywar.dummy=1}] mywar.dummy 1

tellraw @s {"text":"Spreading soldiers!","color":"yellow"}
playsound minecraft:block.note_block.pling master @s ~ ~ ~
