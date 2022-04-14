########
#Summon unit to defend top
#Author: DaveHue
########

#Summon defense unit
summon skeleton ~ ~ ~ 
data modify entity @e[type=skeleton,tag=!mywar.modified,sort=nearest,limit=1] {} merge from storage mywar:storage root.perm.soldier.archer

#Team
function mywar:entity/village/replenish/team/team

#Add tag
tag @e[type=skeleton,tag=mywar.archer,tag=mywar.modified,tag=mywar.soldier,sort=nearest,limit=1] add mywar.defense_top
tag @e[type=skeleton,tag=mywar.archer,tag=mywar.modified,tag=mywar.soldier,sort=nearest,limit=1] add mywar.non_collect