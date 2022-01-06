############
#Sets players spawn and clears item from their inventory
#Author: DaveHue
############

#Set the player's spawn and clear item from inventory 
execute as @e[type=marker,tag=mywar.home_base,sort=nearest,limit=1] at @s run spawnpoint @a[sort=nearest,limit=1]
clear @a[sort=nearest,limit=1] minecraft:armor_stand{display:{Name:'{"translate":"mywar.item.name.home_base","color":"green","italic":false}'},CustomModelData:2,EntityTag:{NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:0b,Invisible:1b,Tags:["mywar.entity","mywar.generate"]}} 1