############
#Restarts the home base process 
#Author: DaveHue
############

#Clear item
clear @a[sort=nearest,limit=1] minecraft:armor_stand{display:{Name:'{"translate":"mywar.item.name.home_base","color":"green","italic":false}'},CustomModelData:2,EntityTag:{NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:0b,Invisible:1b,Tags:["mywar.entity","mywar.generate"]}} 1

#Message
tellraw @a[sort=nearest,limit=1] {"translate":"mywar.message.home_base.invalid","color":"red"}

#Give item back
loot give @a[sort=nearest,limit=1] loot mywar:item/home_base/home_base

#Kill entity
kill @s