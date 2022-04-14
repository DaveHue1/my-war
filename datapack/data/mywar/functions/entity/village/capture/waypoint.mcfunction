#####
#Gives the player the waypoint upon capture
#Author: DaveHue
#####

data remove storage mywar:storage root.temp

data modify storage mywar:storage root.temp.wp set from storage mywar:storage root.perm.wp

data modify storage mywar:storage root.temp.wp.tag.Pos set from entity @s Pos

execute store result score @s mywar.wp.x run data get storage mywar:storage root.temp.wp.tag.Pos[0]
execute store result score @s mywar.wp.y run data get storage mywar:storage root.temp.wp.tag.Pos[1]
execute store result score @s mywar.wp.z run data get storage mywar:storage root.temp.wp.tag.Pos[2]

loot give @a[sort=nearest,limit=1] loot mywar:item/waypoint/waypoint_copy_nbt