############
#Places home base based on where player is facing
#Author: DaveHue
############


execute if entity @a[y_rotation=-135..-45,sort=nearest,limit=1,distance=..7] at @s run setblock ~ ~ ~ structure_block{mode:"LOAD",name:"mywar:castle",ignoreEntities:0b,posX:40,posY:0,posZ:-20,rotation:"CLOCKWISE_90"}
execute if entity @a[y_rotation=-45..45,sort=nearest,limit=1,distance=..7] at @s run setblock ~ ~ ~ structure_block{mode:"LOAD",name:"mywar:castle",ignoreEntities:0b,posX:20,posY:0,posZ:40,rotation:"CLOCKWISE_180"}
execute if entity @a[y_rotation=45..135,sort=nearest,limit=1,distance=..7] at @s run setblock ~ ~ ~ structure_block{mode:"LOAD",name:"mywar:castle",ignoreEntities:0b,posX:-40,posY:0,posZ:20,rotation:"COUNTERCLOCKWISE_90"}
execute if entity @a[y_rotation=135..-135,sort=nearest,limit=1,distance=..7] at @s run setblock ~ ~ ~ structure_block{mode:"LOAD",name:"mywar:castle",ignoreEntities:0b,posX:-20,posY:0,posZ:-40}
setblock ~ ~1 ~ redstone_block
