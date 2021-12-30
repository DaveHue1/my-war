##############
#Generate function
#Author: DaveHue
##############

#Gives the player items
execute as @a[sort=nearest,limit=1] run function mywar:item/give/guide_book
execute as @a[sort=nearest,limit=1] run function mywar:item/give/commands_items
execute as @a[sort=nearest,limit=1] run function mywar:item/give/village_tracker
execute as @a[sort=nearest,limit=1] run function mywar:item/give/money
execute as @a[sort=nearest,limit=1] run function mywar:item/give/money
give @a cooked_beef 16

#Creates home base structure
setblock ~ ~ ~10 structure_block{mode:"LOAD",name:"mywar:castle",ignoreEntities:0b}
setblock ~1 ~ ~10 redstone_block
fill ~ ~ ~10 ~1 ~ ~10 air

#Teleport player inside
tp @a[sort=nearest,limit=1] @e[type=marker,tag=mywar.teleport,sort=nearest,limit=1]
execute as @e[type=marker,tag=mywar.teleport,sort=nearest,limit=1] at @s run spawnpoint @a[sort=nearest,limit=1]
clear @a[sort=nearest,limit=1] minecraft:armor_stand{display:{Name:'{"text":"Home Base","color":"green","italic":false}'},CustomModelData:2,EntityTag:{NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:0b,Invisible:1b,Tags:["mywar.entity","mywar.generate"]}} 1

#Sets the home base coords to teleport back to 
function mywar:technical/home_base

#Sets advisors' ids 
scoreboard players operation @e[tag=mywar.advisor,type=villager,sort=nearest,limit=2] mywar.id = @a[sort=nearest,limit=1] mywar.id

#Kills entities
kill @e[type=marker,tag=mywar.teleport,sort=nearest,limit=1]
kill @s
