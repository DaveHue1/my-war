############
#Sets the player's id
#Author: DaveHue
############

#Id
loot spawn ~ ~ ~ loot mywar:chance/id
execute store result score @s mywar.id run data get entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{mywar.random:1b}}}] Item.tag.Effects[0].EffectDuration 0.05
kill @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{mywar.random:1b}}}]