#####
#Initializes all data 
#Author: DaveHue
#####

##Data for mobs

#Foot soldier 
data merge storage mywar:storage {root:{perm:{soldier:{foot_soldier:{HandItems:[{},{}],CustomNameVisible:1b,PersistenceRequired:1b,Johnny:0b,PatrolLeader:0b,Patrolling:0b,HasRaidGoal:0b,CanJoinRaid:0b,Tags:["mywar.soldier","mywar.foot_soldier","mywar.modified","mywar.universal"],CustomName:'{"text":"Foot Soldier","bold":false,"italic":false}',Attributes:[{Name:generic.follow_range,Base:500},{Name:generic.knockback_resistance,Base:0.1},{Name:generic.movement_speed,Base:0.27},{Name:generic.attack_damage,Base:1},{Name:generic.attack_knockback,Base:1.2}]}}}}}

#Archer
data merge storage mywar:storage {root:{perm:{soldier:{archer:{CustomName:'{"text":"Archer","bold":false,"italic":false}',CustomNameVisible:1b,HandItems:[{id:"minecraft:bow", Count:1b},{}],PersistenceRequired:1b,Tags:["mywar.soldier","mywar.archer","mywar.modified","mywar.universal"],ArmorItems:[{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:iron_helmet",Count:1b,tag:{Unbreakable:1b}}],Attributes:[{Name:generic.follow_range,Base:500},{Name:generic.movement_speed,Base:0.3},{Name:generic.attack_damage,Base:2.5},{Name:generic.attack_knockback,Base:1}]}}}}}

#Swordsman 
data merge storage mywar:storage {root:{perm:{soldier:{swordsmen:{CustomName:'{"text":"Swordsman","bold":false,"italic":false}',DrownedConversionTime:-200000000,InWaterTime:-200000000,HandItems:[{},{id:"minecraft:wooden_sword",Count:1b}],ArmorItems:[{id:"chainmail_boots", Count:1b,tag:{Unbreakable:1b}},{id:"chainmail_leggings",Count:1b,tag:{Unbreakable:1b}},{id:"chainmail_chestplate", Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:iron_helmet",Count:1b,tag:{Unbreakable:1b}}],CustomNameVisible:1b,IsBaby:0b,PersistenceRequired:1b,Tags:["mywar.soldier","mywar.swordsmen","mywar.modified","mywar.universal"],Attributes:[{Name:generic.follow_range,Base:500},{Name:generic.movement_speed,Base:0.27},{Name:generic.attack_damage,Base:2},{Name:generic.attack_knockback,Base:1}]}}}}}

#Knight 
data merge storage mywar:storage {root:{perm:{soldier:{knight:{CustomName:'{"text":"Knight","bold":false,"italic":false}',HandItems:[{},{id:"minecraft:stone_sword",Count:1b}],ArmorItems:[{id:"iron_boots", Count:1b,tag:{Unbreakable:1b}},{id:"iron_leggings",Count:1b,tag:{Unbreakable:1b}},{id:"iron_chestplate", Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:iron_helmet",Count:1b,tag:{Unbreakable:1b}}],CustomNameVisible:1b,IsBaby:0b,PersistenceRequired:1b,Tags:["mywar.soldier","mywar.knight","mywar.modified","mywar.universal"],Attributes:[{Name:generic.follow_range,Base:500},{Name:generic.movement_speed,Base:0.27},{Name:generic.attack_damage,Base:2},{Name:generic.attack_knockback,Base:1}]}}}}}

#Mage 
data merge storage mywar:storage {root:{perm:{soldier:{mage:{CustomName:'{"text":"Mage","bold":false,"italic":false}',DrownedConversionTime:-200000000,InWaterTime:-200000000,ArmorItems:[{id:"", Count:1b,tag:{Unbreakable:1b}},{id:"",Count:1b,tag:{Unbreakable:1b}},{id:"leather_chestplate", Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:leather_helmet",Count:1b,tag:{Unbreakable:1b}}],CustomNameVisible:1b,IsBaby:0b,PersistenceRequired:1b,Tags:["mywar.soldier","mywar.mage","mywar.modified","mywar.universal"],Attributes:[{Name:generic.follow_range,Base:500},{Name:generic.movement_speed,Base:0.27},{Name:generic.attack_damage,Base:2},{Name:generic.attack_knockback,Base:1}]}}}}}

##Data for items

#Waypoint
data merge storage mywar:storage {root:{perm:{wp:{id: "minecraft:carrot_on_a_stick", Count: 1b, tag: {Damage: 0, CustomModelData: 8, mywar.waypoint: 1b, display: {Name: '{"text":"Waypoint","color":"yellow","italic":false}'}}}}}}