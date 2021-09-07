#########
#Description: Spreads units around player 
#Author: Dave Hue
#########

execute if entity @s[scores={tcc.dummy=0}] run function tcc:item/riftjuice_bottle/iterate_y_start
execute store success score tcc.temp_0 tcc.dummy run scoreboard players remove @s[scores={tcc.dummy=1}] tcc.dummy 1
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~1 ~ ~ run function tcc:item/riftjuice_bottle/iterate_x
execute store success score tcc.temp_0 tcc.dummy run scoreboard players remove @s[scores={tcc.dummy=2..3}] tcc.dummy 2
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~2 ~ ~ run function tcc:item/riftjuice_bottle/iterate_x
execute store success score tcc.temp_0 tcc.dummy run scoreboard players remove @s[scores={tcc.dummy=4..7}] tcc.dummy 4
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~4 ~ ~ run function tcc:item/riftjuice_bottle/iterate_x
execute store success score tcc.temp_0 tcc.dummy run scoreboard players remove @s[scores={tcc.dummy=8..15}] tcc.dummy 8
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~8 ~ ~ run function tcc:item/riftjuice_bottle/iterate_x
execute store success score tcc.temp_0 tcc.dummy run scoreboard players remove @s[scores={tcc.dummy=16..31}] tcc.dummy 16
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~16 ~ ~ run function tcc:item/riftjuice_bottle/iterate_x
execute store success score tcc.temp_0 tcc.dummy run scoreboard players remove @s[scores={tcc.dummy=32..63}] tcc.dummy 32
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~32 ~ ~ run function tcc:item/riftjuice_bottle/iterate_x
execute store success score tcc.temp_0 tcc.dummy run scoreboard players remove @s[scores={tcc.dummy=64..127}] tcc.dummy 64
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~64 ~ ~ run function tcc:item/riftjuice_bottle/iterate_x
execute store success score tcc.temp_0 tcc.dummy run scoreboard players remove @s[scores={tcc.dummy=128..255}] tcc.dummy 128
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~128 ~ ~ run function tcc:item/riftjuice_bottle/iterate_x
execute store success score tcc.temp_0 tcc.dummy run scoreboard players remove @s[scores={tcc.dummy=256..511}] tcc.dummy 256
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~256 ~ ~ run function tcc:item/riftjuice_bottle/iterate_x
execute store success score tcc.temp_0 tcc.dummy run scoreboard players remove @s[scores={tcc.dummy=512..1023}] tcc.dummy 512
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~512 ~ ~ run function tcc:item/riftjuice_bottle/iterate_x
execute store success score tcc.temp_0 tcc.dummy run scoreboard players remove @s[scores={tcc.dummy=1024..2047}] tcc.dummy 1024
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~1024 ~ ~ run function tcc:item/riftjuice_bottle/iterate_x
execute store success score tcc.temp_0 tcc.dummy run scoreboard players remove @s[scores={tcc.dummy=2048..4095}] tcc.dummy 2048
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~2048 ~ ~ run function tcc:item/riftjuice_bottle/iterate_x
execute store success score tcc.temp_0 tcc.dummy run scoreboard players remove @s[scores={tcc.dummy=4096..8191}] tcc.dummy 4096
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~4096 ~ ~ run function tcc:item/riftjuice_bottle/iterate_x
execute store success score tcc.temp_0 tcc.dummy run scoreboard players remove @s[scores={tcc.dummy=8192..16383}] tcc.dummy 8192
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~8192 ~ ~ run function tcc:item/riftjuice_bottle/iterate_x
execute store success score tcc.temp_0 tcc.dummy run scoreboard players remove @s[scores={tcc.dummy=16384..32767}] tcc.dummy 16384
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~16384 ~ ~ run function tcc:item/riftjuice_bottle/iterate_x
execute store success score tcc.temp_0 tcc.dummy run scoreboard players remove @s[scores={tcc.dummy=32768..65535}] tcc.dummy 32768
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~32768 ~ ~ run function tcc:item/riftjuice_bottle/iterate_x
execute store success score tcc.temp_0 tcc.dummy run scoreboard players remove @s[scores={tcc.dummy=65536..131071}] tcc.dummy 65536
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~65536 ~ ~ run function tcc:item/riftjuice_bottle/iterate_x
execute store success score tcc.temp_0 tcc.dummy run scoreboard players remove @s[scores={tcc.dummy=131072..262143}] tcc.dummy 131072
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~131072 ~ ~ run function tcc:item/riftjuice_bottle/iterate_x
execute store success score tcc.temp_0 tcc.dummy run scoreboard players remove @s[scores={tcc.dummy=262144..524287}] tcc.dummy 262144
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~262144 ~ ~ run function tcc:item/riftjuice_bottle/iterate_x
execute store success score tcc.temp_0 tcc.dummy run scoreboard players remove @s[scores={tcc.dummy=524288..1048575}] tcc.dummy 524288
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~524288 ~ ~ run function tcc:item/riftjuice_bottle/iterate_x
execute store success score tcc.temp_0 tcc.dummy run scoreboard players remove @s[scores={tcc.dummy=1048576..2097151}] tcc.dummy 1048576
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~1048576 ~ ~ run function tcc:item/riftjuice_bottle/iterate_x
execute store success score tcc.temp_0 tcc.dummy run scoreboard players remove @s[scores={tcc.dummy=2097152..4194303}] tcc.dummy 2097152
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~2097152 ~ ~ run function tcc:item/riftjuice_bottle/iterate_x
execute store success score tcc.temp_0 tcc.dummy run scoreboard players remove @s[scores={tcc.dummy=4194304..8388607}] tcc.dummy 4194304
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~4194304 ~ ~ run function tcc:item/riftjuice_bottle/iterate_x
execute store success score tcc.temp_0 tcc.dummy run scoreboard players remove @s[scores={tcc.dummy=8388608..16777215}] tcc.dummy 8388608
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~8388608 ~ ~ run function tcc:item/riftjuice_bottle/iterate_x
execute store success score tcc.temp_0 tcc.dummy run scoreboard players remove @s[scores={tcc.dummy=16777216..}] tcc.dummy 16777216
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~16777216 ~ ~ run function tcc:item/riftjuice_bottle/iterate_x
