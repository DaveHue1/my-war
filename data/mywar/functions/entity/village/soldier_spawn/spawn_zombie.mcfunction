########
#Summons zombies
#Author: DaveHue
########

summon zombie ~ ~ ~ {PersistenceRequired:1b,Tags:["mywar.soldier"],ArmorItems:[{},{},{},{id:"minecraft:iron_helmet",Count:1b,tag:{Unbreakable:1b}}],Attributes:[{Name:generic.follow_range,Base:500},{Name:generic.movement_speed,Base:0.25},{Name:generic.attack_damage,Base:2},{Name:generic.attack_knockback,Base:1}]}

scoreboard players remove #mywar.spawn_limit2 mywar.dummy 1

execute if score #mywar.spawn_limit2 mywar.dummy matches 1.. run function mywar:entity/village/soldier_spawn/spawn_zombie
