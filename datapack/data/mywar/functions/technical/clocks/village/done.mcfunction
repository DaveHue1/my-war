#####
#Split for village done
#Author: Dave Hue
#####

#Check whether village is captured or not 
execute as @s[tag=!mywar.village_captured] at @s run function mywar:entity/village/capture/capture

#Check if village has been invaded by enemy team
#execute as @s[tag=mywar.village_captured,tag=!mywar.invaded] at @s run function mywar:technical/clocks/village/team_check 

#Check if mobs are floating
execute as @e[type=#minecraft:undead,tag=mywar.soldier,predicate=mywar:entity/in_water,distance=..300] at @s run function mywar:entity/village/float/float

#Set initial village stuff
execute as @s[tag=!mywar.village_set] at @s run function mywar:entity/village/set

