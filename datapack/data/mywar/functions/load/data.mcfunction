#####
#Initializes all data 
#Author: DaveHue
#####

##Data for mobs

#Foot soldier vindicator 
data merge storage mywar:storage {root:{perm:{soldier:{foot_soldier:{illager:{HandItems:[{},{}],CustomNameVisible:1b,Team:"mywar.friendly",PersistenceRequired:1b,Johnny:0b,PatrolLeader:0b,Patrolling:0b,HasRaidGoal:0b,CanJoinRaid:0b,Tags:["mywar.soldier","mywar.foot_soldier","mywar.modified"],CustomName:'{"text":"Foot Soldier","bold":false,"italic":false}',Attributes:[{Name:generic.follow_range,Base:500},{Name:generic.knockback_resistance,Base:0.1},{Name:generic.movement_speed,Base:0.27},{Name:generic.attack_damage,Base:1},{Name:generic.attack_knockback,Base:1.2}]}}}}}}

#Foot soldier zombie friendly
data merge storage mywar:storage {root:{perm:{soldier:{foot_soldier:{zombie:{friendly:{CustomName:'{"text":"Foot Soldier","bold":false,"italic":false}',CustomNameVisible:1b,Team:"mywar.friendly",PersistenceRequired:1b,Tags:["mywar.soldier","mywar.foot_soldier","mywar.modified"],ArmorItems:[{},{},{},{id:"minecraft:iron_helmet",Count:1b,tag:{Unbreakable:1b}}],Attributes:[{Name:generic.follow_range,Base:500},{Name:generic.movement_speed,Base:0.27},{Name:generic.attack_damage,Base:2},{Name:generic.attack_knockback,Base:1}]}}}}}}}

#Foot soldier zombie enemy 
data merge storage mywar:storage {root:{perm:{soldier:{foot_soldier:{zombie:{enemy:{CustomName:'{"text":"Foot Soldier","bold":false,"italic":false}',CustomNameVisible:1b,DeathLootTable:"mywar:item/deplete",Team:"mywar.enemy",PersistenceRequired:1b,Tags:["mywar.soldier","mywar.foot_soldier","mywar.modified"],ArmorItems:[{},{},{},{id:"minecraft:iron_helmet",Count:1b,tag:{Unbreakable:1b}}],Attributes:[{Name:generic.follow_range,Base:500},{Name:generic.movement_speed,Base:0.27},{Name:generic.attack_damage,Base:2},{Name:generic.attack_knockback,Base:1}]}}}}}}}

##Data for items

#Waypoint
data merge storage mywar:storage {root:{perm:{wp:{id: "minecraft:carrot_on_a_stick", Count: 1b, tag: {Damage: 0, CustomModelData: 8, mywar.waypoint: 1b, display: {Name: '{"text":"Waypoint","color":"yellow","italic":false}'}}}}}}