######
#Deploy foot soldier
#Author: Dave Hue
######

#Deployment 
execute if score @s mywar.c_fs_i matches 1.. run function mywar:commands/deploy/foot_soldier/illager 
execute if score @s mywar.c_fs_z matches 1.. run function mywar:commands/deploy/foot_soldier/zombie 
