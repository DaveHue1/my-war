#####
#Initializes all data 
#Author: DaveHue
#####

##Data for mobs

#Foot soldier vindicator 
data merge storage mywar:storage {root:{perm:{soldier:{foot_soldier:{illager:{CustomNameVisible:1b,Team:"mywar.friendly",PersistenceRequired:1b,Johnny:0b,PatrolLeader:0b,Patrolling:0b,HasRaidGoal:0b,CanJoinRaid:0b,Tags:["mywar.soldier","mywar.foot_soldier"],CustomName:'{"text":"Foot Soldier","bold":false,"italic":false}',Attributes:[{Name:generic.follow_range,Base:500},{Name:generic.knockback_resistance,Base:0.1},{Name:generic.movement_speed,Base:0.25},{Name:generic.attack_damage,Base:1},{Name:generic.attack_knockback,Base:1.2}]}}}}}}

#Foot soldier zombie 
data merge storage mywar:storage {root:{perm:{soldier:{foot_soldier:{zombie:{PersistenceRequired:1b,Tags:["mywar.soldier","mywar.foot_soldier"],ArmorItems:[{},{},{},{id:"minecraft:iron_helmet",Count:1b,tag:{Unbreakable:1b}}],Attributes:[{Name:generic.follow_range,Base:500},{Name:generic.movement_speed,Base:0.25},{Name:generic.attack_damage,Base:2},{Name:generic.attack_knockback,Base:1}]}}}}}}
