########
#Starts the iteration of X 
#Author(s): DaveHue, CreeperMagnet
#Code used with permission
########


execute if entity @s[scores={mywar.dummy=0}] run function mywar:item/controller/home_base/home_base_z_init

execute store success score mywar.hb mywar.dummy run scoreboard players remove @s[scores={mywar.dummy=1}] mywar.dummy 1
execute if score mywar.hb mywar.dummy matches 1 positioned ~ ~1 ~ run function mywar:item/controller/home_base/home_base_y
execute store success score mywar.hb mywar.dummy run scoreboard players remove @s[scores={mywar.dummy=2..3}] mywar.dummy 2
execute if score mywar.hb mywar.dummy matches 1 positioned ~ ~2 ~ run function mywar:item/controller/home_base/home_base_y
execute store success score mywar.hb mywar.dummy run scoreboard players remove @s[scores={mywar.dummy=4..7}] mywar.dummy 4
execute if score mywar.hb mywar.dummy matches 1 positioned ~ ~4 ~ run function mywar:item/controller/home_base/home_base_y
execute store success score mywar.hb mywar.dummy run scoreboard players remove @s[scores={mywar.dummy=8..15}] mywar.dummy 8
execute if score mywar.hb mywar.dummy matches 1 positioned ~ ~8 ~ run function mywar:item/controller/home_base/home_base_y
execute store success score mywar.hb mywar.dummy run scoreboard players remove @s[scores={mywar.dummy=16..31}] mywar.dummy 16
execute if score mywar.hb mywar.dummy matches 1 positioned ~ ~16 ~ run function mywar:item/controller/home_base/home_base_y
execute store success score mywar.hb mywar.dummy run scoreboard players remove @s[scores={mywar.dummy=32..63}] mywar.dummy 32
execute if score mywar.hb mywar.dummy matches 1 positioned ~ ~32 ~ run function mywar:item/controller/home_base/home_base_y
execute store success score mywar.hb mywar.dummy run scoreboard players remove @s[scores={mywar.dummy=64..127}] mywar.dummy 64
execute if score mywar.hb mywar.dummy matches 1 positioned ~ ~64 ~ run function mywar:item/controller/home_base/home_base_y
execute store success score mywar.hb mywar.dummy run scoreboard players remove @s[scores={mywar.dummy=128..255}] mywar.dummy 128
execute if score mywar.hb mywar.dummy matches 1 positioned ~ ~128 ~ run function mywar:item/controller/home_base/home_base_y
execute store success score mywar.hb mywar.dummy run scoreboard players remove @s[scores={mywar.dummy=256..511}] mywar.dummy 256
execute if score mywar.hb mywar.dummy matches 1 positioned ~ ~256 ~ run function mywar:item/controller/home_base/home_base_y
execute store success score mywar.hb mywar.dummy run scoreboard players remove @s[scores={mywar.dummy=512..1023}] mywar.dummy 512
execute if score mywar.hb mywar.dummy matches 1 positioned ~ ~512 ~ run function mywar:item/controller/home_base/home_base_y
execute store success score mywar.hb mywar.dummy run scoreboard players remove @s[scores={mywar.dummy=1024..2047}] mywar.dummy 1024
execute if score mywar.hb mywar.dummy matches 1 positioned ~ ~1024 ~ run function mywar:item/controller/home_base/home_base_y
execute store success score mywar.hb mywar.dummy run scoreboard players remove @s[scores={mywar.dummy=2048..4095}] mywar.dummy 2048
execute if score mywar.hb mywar.dummy matches 1 positioned ~ ~2048 ~ run function mywar:item/controller/home_base/home_base_y
execute store success score mywar.hb mywar.dummy run scoreboard players remove @s[scores={mywar.dummy=4096..8191}] mywar.dummy 4096
execute if score mywar.hb mywar.dummy matches 1 positioned ~ ~4096 ~ run function mywar:item/controller/home_base/home_base_y
execute store success score mywar.hb mywar.dummy run scoreboard players remove @s[scores={mywar.dummy=8192..16383}] mywar.dummy 8192
execute if score mywar.hb mywar.dummy matches 1 positioned ~ ~8192 ~ run function mywar:item/controller/home_base/home_base_y
execute store success score mywar.hb mywar.dummy run scoreboard players remove @s[scores={mywar.dummy=16384..32767}] mywar.dummy 16384
execute if score mywar.hb mywar.dummy matches 1 positioned ~ ~16384 ~ run function mywar:item/controller/home_base/home_base_y
execute store success score mywar.hb mywar.dummy run scoreboard players remove @s[scores={mywar.dummy=32768..65535}] mywar.dummy 32768
execute if score mywar.hb mywar.dummy matches 1 positioned ~ ~32768 ~ run function mywar:item/controller/home_base/home_base_y
execute store success score mywar.hb mywar.dummy run scoreboard players remove @s[scores={mywar.dummy=65536..131071}] mywar.dummy 65536
execute if score mywar.hb mywar.dummy matches 1 positioned ~ ~65536 ~ run function mywar:item/controller/home_base/home_base_y
execute store success score mywar.hb mywar.dummy run scoreboard players remove @s[scores={mywar.dummy=131072..262143}] mywar.dummy 131072
execute if score mywar.hb mywar.dummy matches 1 positioned ~ ~131072 ~ run function mywar:item/controller/home_base/home_base_y
execute store success score mywar.hb mywar.dummy run scoreboard players remove @s[scores={mywar.dummy=262144..524287}] mywar.dummy 262144
execute if score mywar.hb mywar.dummy matches 1 positioned ~ ~262144 ~ run function mywar:item/controller/home_base/home_base_y
execute store success score mywar.hb mywar.dummy run scoreboard players remove @s[scores={mywar.dummy=524288..1048575}] mywar.dummy 524288
execute if score mywar.hb mywar.dummy matches 1 positioned ~ ~524288 ~ run function mywar:item/controller/home_base/home_base_y
execute store success score mywar.hb mywar.dummy run scoreboard players remove @s[scores={mywar.dummy=1048576..2097151}] mywar.dummy 1048576
execute if score mywar.hb mywar.dummy matches 1 positioned ~ ~1048576 ~ run function mywar:item/controller/home_base/home_base_y
execute store success score mywar.hb mywar.dummy run scoreboard players remove @s[scores={mywar.dummy=2097152..4194303}] mywar.dummy 2097152
execute if score mywar.hb mywar.dummy matches 1 positioned ~ ~2097152 ~ run function mywar:item/controller/home_base/home_base_y
execute store success score mywar.hb mywar.dummy run scoreboard players remove @s[scores={mywar.dummy=4194304..8388607}] mywar.dummy 4194304
execute if score mywar.hb mywar.dummy matches 1 positioned ~ ~4194304 ~ run function mywar:item/controller/home_base/home_base_y
execute store success score mywar.hb mywar.dummy run scoreboard players remove @s[scores={mywar.dummy=8388608..16777215}] mywar.dummy 8388608
execute if score mywar.hb mywar.dummy matches 1 positioned ~ ~8388608 ~ run function mywar:item/controller/home_base/home_base_y
execute store success score mywar.hb mywar.dummy run scoreboard players remove @s[scores={mywar.dummy=16777216..}] mywar.dummy 16777216
execute if score mywar.hb mywar.dummy matches 1 positioned ~ ~16777216 ~ run function mywar:item/controller/home_base/home_base_y




execute store success score mywar.hb mywar.dummy run scoreboard players add @s[scores={mywar.dummy=-1}] mywar.dummy 1
execute if score mywar.hb mywar.dummy matches 1 positioned ~ ~-1 ~ run function mywar:item/controller/home_base/home_base_y
execute store success score mywar.hb mywar.dummy run scoreboard players add @s[scores={mywar.dummy=-3..-2}] mywar.dummy 2
execute if score mywar.hb mywar.dummy matches 1 positioned ~ ~-2 ~ run function mywar:item/controller/home_base/home_base_y
execute store success score mywar.hb mywar.dummy run scoreboard players add @s[scores={mywar.dummy=-7..-4}] mywar.dummy 4
execute if score mywar.hb mywar.dummy matches 1 positioned ~ ~-4 ~ run function mywar:item/controller/home_base/home_base_y
execute store success score mywar.hb mywar.dummy run scoreboard players add @s[scores={mywar.dummy=-15..-8}] mywar.dummy 8
execute if score mywar.hb mywar.dummy matches 1 positioned ~ ~-8 ~ run function mywar:item/controller/home_base/home_base_y
execute store success score mywar.hb mywar.dummy run scoreboard players add @s[scores={mywar.dummy=-31..-16}] mywar.dummy 16
execute if score mywar.hb mywar.dummy matches 1 positioned ~ ~-16 ~ run function mywar:item/controller/home_base/home_base_y
execute store success score mywar.hb mywar.dummy run scoreboard players add @s[scores={mywar.dummy=-63..-32}] mywar.dummy 32
execute if score mywar.hb mywar.dummy matches 1 positioned ~ ~-32 ~ run function mywar:item/controller/home_base/home_base_y
execute store success score mywar.hb mywar.dummy run scoreboard players add @s[scores={mywar.dummy=-127..-64}] mywar.dummy 64
execute if score mywar.hb mywar.dummy matches 1 positioned ~ ~-64 ~ run function mywar:item/controller/home_base/home_base_y
execute store success score mywar.hb mywar.dummy run scoreboard players add @s[scores={mywar.dummy=-255..-128}] mywar.dummy 128
execute if score mywar.hb mywar.dummy matches 1 positioned ~ ~-128 ~ run function mywar:item/controller/home_base/home_base_y
execute store success score mywar.hb mywar.dummy run scoreboard players add @s[scores={mywar.dummy=-511..-256}] mywar.dummy 256
execute if score mywar.hb mywar.dummy matches 1 positioned ~ ~-256 ~ run function mywar:item/controller/home_base/home_base_y
execute store success score mywar.hb mywar.dummy run scoreboard players add @s[scores={mywar.dummy=-1023..-512}] mywar.dummy 512
execute if score mywar.hb mywar.dummy matches 1 positioned ~ ~-512 ~ run function mywar:item/controller/home_base/home_base_y
execute store success score mywar.hb mywar.dummy run scoreboard players add @s[scores={mywar.dummy=-2047..-1024}] mywar.dummy 1024
execute if score mywar.hb mywar.dummy matches 1 positioned ~ ~-1024 ~ run function mywar:item/controller/home_base/home_base_y
execute store success score mywar.hb mywar.dummy run scoreboard players add @s[scores={mywar.dummy=-4095..-2048}] mywar.dummy 2048
execute if score mywar.hb mywar.dummy matches 1 positioned ~ ~-2048 ~ run function mywar:item/controller/home_base/home_base_y
execute store success score mywar.hb mywar.dummy run scoreboard players add @s[scores={mywar.dummy=-8191..-4096}] mywar.dummy 4096
execute if score mywar.hb mywar.dummy matches 1 positioned ~ ~-4096 ~ run function mywar:item/controller/home_base/home_base_y
execute store success score mywar.hb mywar.dummy run scoreboard players add @s[scores={mywar.dummy=-16383..-8192}] mywar.dummy 8192
execute if score mywar.hb mywar.dummy matches 1 positioned ~ ~-8192 ~ run function mywar:item/controller/home_base/home_base_y
execute store success score mywar.hb mywar.dummy run scoreboard players add @s[scores={mywar.dummy=-32767..-16384}] mywar.dummy 16384
execute if score mywar.hb mywar.dummy matches 1 positioned ~ ~-16384 ~ run function mywar:item/controller/home_base/home_base_y
execute store success score mywar.hb mywar.dummy run scoreboard players add @s[scores={mywar.dummy=-65535..-32768}] mywar.dummy 32768
execute if score mywar.hb mywar.dummy matches 1 positioned ~ ~-32768 ~ run function mywar:item/controller/home_base/home_base_y
execute store success score mywar.hb mywar.dummy run scoreboard players add @s[scores={mywar.dummy=-131071..-65536}] mywar.dummy 65536
execute if score mywar.hb mywar.dummy matches 1 positioned ~ ~-65536 ~ run function mywar:item/controller/home_base/home_base_y
execute store success score mywar.hb mywar.dummy run scoreboard players add @s[scores={mywar.dummy=-262143..-131072}] mywar.dummy 131072
execute if score mywar.hb mywar.dummy matches 1 positioned ~ ~-131072 ~ run function mywar:item/controller/home_base/home_base_y
execute store success score mywar.hb mywar.dummy run scoreboard players add @s[scores={mywar.dummy=-524287..-262144}] mywar.dummy 262144
execute if score mywar.hb mywar.dummy matches 1 positioned ~ ~-262144 ~ run function mywar:item/controller/home_base/home_base_y
execute store success score mywar.hb mywar.dummy run scoreboard players add @s[scores={mywar.dummy=-1048575..-524288}] mywar.dummy 524288
execute if score mywar.hb mywar.dummy matches 1 positioned ~ ~-524288 ~ run function mywar:item/controller/home_base/home_base_y
execute store success score mywar.hb mywar.dummy run scoreboard players add @s[scores={mywar.dummy=-2097151..-1048576}] mywar.dummy 1048576
execute if score mywar.hb mywar.dummy matches 1 positioned ~ ~-1048576 ~ run function mywar:item/controller/home_base/home_base_y
execute store success score mywar.hb mywar.dummy run scoreboard players add @s[scores={mywar.dummy=-4194303..-2097152}] mywar.dummy 2097152
execute if score mywar.hb mywar.dummy matches 1 positioned ~ ~-2097152 ~ run function mywar:item/controller/home_base/home_base_y
execute store success score mywar.hb mywar.dummy run scoreboard players add @s[scores={mywar.dummy=-8388607..-4194304}] mywar.dummy 4194304
execute if score mywar.hb mywar.dummy matches 1 positioned ~ ~-4194304 ~ run function mywar:item/controller/home_base/home_base_y
execute store success score mywar.hb mywar.dummy run scoreboard players add @s[scores={mywar.dummy=-16777215..-8388608}] mywar.dummy 8388608
execute if score mywar.hb mywar.dummy matches 1 positioned ~ ~-8388608 ~ run function mywar:item/controller/home_base/home_base_y
execute store success score mywar.hb mywar.dummy run scoreboard players add @s[scores={mywar.dummy=..-16777216}] mywar.dummy 16777216
execute if score mywar.hb mywar.dummy matches 1 positioned ~ ~-16777216 ~ run function mywar:item/controller/home_base/home_base_y
