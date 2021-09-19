##############
#Generate function
#Author: DaveHue
##############

#Gives the player command items
execute as @a[tag=mywar.warning,sort=nearest,limit=1] run function mywar:item/give/commands_items
execute as @a[tag=mywar.warning,sort=nearest,limit=1] run function mywar:item/give/village_tracker

#Creates home base structure
setblock ~ ~ ~10 structure_block{mode:"LOAD",name:"mywar:castle",ignoreEntities:0b}
setblock ~1 ~ ~10 redstone_block
tp @a @e[type=armor_stand,tag=mywar.teleport,sort=nearest,limit=1]
execute as @e[type=armor_stand,tag=mywar.teleport,sort=nearest,limit=1] at @s run spawnpoint @a[sort=nearest,limit=1]
clear @a[tag=mywar.warning,sort=nearest,limit=1] minecraft:armor_stand{Name:'{"text":"Home Base","color":"green","italic":false}'} 1

#Modifies Advisor Villager
data merge entity @e[type=villager,tag=mywar.advisor,tag=mywar.entity,tag=!mywar.advisor_merged,sort=nearest,limit=1] {CustomNameVisible:1b,Tags:["mywar.entity","mywar.advisor","mywar.advisor_merged"],CustomName:'{"text":"Advisor","color":"aqua","bold":true,"italic":false}',VillagerData:{profession:"minecraft:nitwit"},Offers:{Recipes:[{buy:{id:"minecraft:ink_sac",Count:2b,tag:{display:{Name:'{"text":"Money","color":"yellow","bold":true,"italic":false}'},CustomModelData:1,mywar.currency:1b, mywar.item:1b}},sell:{id:"minecraft:vindicator_spawn_egg",Count:1b,tag:{EntityTag:{CustomNameVisible:1b,PersistenceRequired:1b,Johnny:0b,PatrolLeader:0b,Patrolling:0b,HasRaidGoal:0b,CanJoinRaid:0b,CustomName:'{"text":"Foot Soldier"}',HandItems:[{id:'minecraft:stone_sword',Count:1b},{}],Attributes:[{Name:generic.follow_range,Base:500},{Name:generic.knockback_resistance,Base:0.1},{Name:generic.movement_speed,Base:0.25},{Name:generic.attack_damage,Base:1.5},{Name:generic.attack_knockback,Base:1.2}]}}}}]}}

#Sets the home base coords to teleport back to 
function mywar:technical/home_base

#Kills entity
kill @s
