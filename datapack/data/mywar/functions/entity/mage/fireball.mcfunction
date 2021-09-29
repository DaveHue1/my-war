#####
#Fireball mage ability
#Author: DaveHue
#####

execute positioned 0.0 0 0.0 run summon minecraft:area_effect_cloud ^ ^ ^0.1 {Duration: 2, Tags: ["mywar.axis"]}
execute anchored eyes run summon fireball ^ ^-0.7 ^0.7
data modify entity @e[type=fireball, sort=nearest, limit=1] power set from entity @e[tag=mywar.axis,type=area_effect_cloud,limit=1] Pos
kill @e[tag=mywar.axis]