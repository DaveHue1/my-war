#####
#Checks which team the player is on
#Author: Dave Hue
#####

#Red team
execute if entity @s[team=mywar.red] at @s if entity @e[tag=mywar.village_captured,tag=!mywar.red,tag=!mywar.enemy,tag=!mywar.invaded,distance=..300,sort=nearest,limit=1] at @s run function mywar:item/controller/invade/invasion_begin

#Blue team
execute if entity @s[team=mywar.blue] at @s if entity @e[tag=mywar.village_captured,tag=!mywar.blue,tag=!mywar.enemy,tag=!mywar.invaded,distance=..300,sort=nearest,limit=1] at @s run function mywar:item/controller/invade/invasion_begin

#Yellow team
execute if entity @s[team=mywar.yellow] at @s if entity @e[tag=mywar.village_captured,tag=!mywar.yellow,tag=!mywar.enemy,tag=!mywar.invaded,distance=..300,sort=nearest,limit=1] at @s run function mywar:item/controller/invade/invasion_begin

#Green team
execute if entity @s[team=mywar.green] at @s if entity @e[tag=mywar.village_captured,tag=!mywar.green,tag=!mywar.enemy,tag=!mywar.invaded,distance=..300,sort=nearest,limit=1] at @s run function mywar:item/controller/invade/invasion_begin
