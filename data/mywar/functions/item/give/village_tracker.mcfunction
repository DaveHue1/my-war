#########
#Gives player the Village Tracker and sets it up
#Author: DaveHue 
#########

data remove storage mywar:storage root.temp

data modify storage mywar:storage root.temp.vt.retain_item set from entity @s SelectedItem

loot replace entity @s weapon.mainhand loot mywar:item/village_tracker/set_map
data modify storage mywar:storage root.temp.vt.map set from entity @s SelectedItem

loot replace entity @s weapon.mainhand loot mywar:item/village_tracker/set_village_tracker
data modify storage mywar:storage root.temp.vt.compass set from entity @s SelectedItem

item modify entity @s weapon.mainhand mywar:item/village_tracker/copy_nbt

data modify storage mywar:storage root.temp.vt.compass.tag.LodestoneDimension set value "minecraft:overworld"
execute store result storage mywar:storage root.temp.vt.compass.tag.LodestonePos.X int 1.0 run data get storage mywar:storage root.temp.vt.map.tag.Decorations[0].x
execute store result storage mywar:storage root.temp.vt.compass.tag.LodestonePos.Z int 1.0 run data get storage mywar:storage root.temp.vt.map.tag.Decorations[0].z

loot give @s loot mywar:item/village_tracker/village_tracker_copy_nbt





