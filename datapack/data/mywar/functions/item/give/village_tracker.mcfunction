#########
#Gives player the Village Tracker and sets it up
#Author: DaveHue 
#########

setblock ~ 0 ~ chest
data remove storage mywar:storage root.temp

item replace block ~ 0 ~ container.0 from entity @s weapon.mainhand 

loot replace entity @s weapon.mainhand loot mywar:item/village_tracker/set_map
data modify storage mywar:storage root.temp.vt.map set from entity @s SelectedItem

loot replace entity @s weapon.mainhand loot mywar:item/village_tracker/set_village_tracker
data modify storage mywar:storage root.temp.vt.compass set from entity @s SelectedItem

item replace entity @s weapon.mainhand from block ~ 0 ~ container.0

data modify storage mywar:storage root.temp.vt.compass.tag.LodestoneDimension set value "minecraft:overworld"
execute store result storage mywar:storage root.temp.vt.compass.tag.LodestonePos.X int 1.0 run data get storage mywar:storage root.temp.vt.map.tag.Decorations[0].x
execute store result storage mywar:storage root.temp.vt.compass.tag.LodestonePos.Z int 1.0 run data get storage mywar:storage root.temp.vt.map.tag.Decorations[0].z

execute store result score @s mywar.vt.x run data get storage mywar:storage root.temp.vt.map.tag.Decorations[0].x
execute store result score @s mywar.vt.y run data get storage mywar:storage root.temp.vt.map.tag.Decorations[0].y
execute store result score @s mywar.vt.z run data get storage mywar:storage root.temp.vt.map.tag.Decorations[0].z

loot give @s loot mywar:item/village_tracker/village_tracker_copy_nbt
setblock ~ 0 ~ bedrock




