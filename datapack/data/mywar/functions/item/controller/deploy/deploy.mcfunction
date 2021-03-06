#####
#Deploy soldiers
#Author: Dave Hue
#####

#Sound 
playsound minecraft:block.note_block.bass master @s ~ ~ ~

#Foot soldier
function mywar:item/controller/deploy/foot_soldier/deploy

#Archer
function mywar:item/controller/deploy/archer/deploy

#Swordsmen
function mywar:item/controller/deploy/swordsmen/deploy

#Knight
function mywar:item/controller/deploy/knight/deploy

#Mage
function mywar:item/controller/deploy/mage/deploy

#Message
execute unless score @s mywar.cl matches 1.. run tellraw @s {"translate":"mywar.message.player.deploy.no_soldiers","color":"red"}

#Team
function mywar:item/controller/deploy/team

#Spreading
execute if entity @s[team=mywar.red] run spreadplayers ~ ~ 0 30 false @e[team=mywar.red,tag=mywar.soldier,sort=nearest,distance=..5] 
execute if entity @s[team=mywar.red] run spreadplayers ~ ~ 0 30 false @e[team=mywar.red,type=skeleton_horse,sort=nearest,distance=..5]

execute if entity @s[team=mywar.blue] run spreadplayers ~ ~ 0 30 false @e[team=mywar.blue,tag=mywar.soldier,sort=nearest,distance=..5] 
execute if entity @s[team=mywar.blue] run spreadplayers ~ ~ 0 30 false @e[team=mywar.blue,type=skeleton_horse,sort=nearest,distance=..5] 

execute if entity @s[team=mywar.yellow] run spreadplayers ~ ~ 0 30 false @e[team=mywar.yellow,tag=mywar.soldier,sort=nearest,distance=..5] 
execute if entity @s[team=mywar.yellow] run spreadplayers ~ ~ 0 30 false @e[team=mywar.yellow,type=skeleton_horse,sort=nearest,distance=..5] 

execute if entity @s[team=mywar.green] run spreadplayers ~ ~ 0 30 false @e[team=mywar.green,tag=mywar.soldier,sort=nearest,distance=..5] 
execute if entity @s[team=mywar.green] run spreadplayers ~ ~ 0 30 false @e[team=mywar.green,type=skeleton_horse,sort=nearest,distance=..5]

#Reset collect score
scoreboard players set @s mywar.cl 0 