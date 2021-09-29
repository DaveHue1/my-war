#####
#Initializes all data 
#Author: DaveHue
#####

##Data for mobs

#Foot soldier vindicator 
data merge storage mywar:storage {root:{perm:{soldier:{foot_soldier:{illager:{HandItems:[{},{}],CustomNameVisible:1b,Team:"mywar.friendly",PersistenceRequired:1b,Johnny:0b,PatrolLeader:0b,Patrolling:0b,HasRaidGoal:0b,CanJoinRaid:0b,Tags:["mywar.soldier","mywar.foot_soldier","mywar.modified"],CustomName:'{"text":"Foot Soldier","bold":false,"italic":false}',Attributes:[{Name:generic.follow_range,Base:500},{Name:generic.knockback_resistance,Base:0.1},{Name:generic.movement_speed,Base:0.27},{Name:generic.attack_damage,Base:1},{Name:generic.attack_knockback,Base:1.2}]}}}}}}

#Foot soldier zombie friendly
data merge storage mywar:storage {root:{perm:{soldier:{foot_soldier:{zombie:{friendly:{CustomName:'{"text":"Foot Soldier","bold":false,"italic":false}',CustomNameVisible:1b,IsBaby:0b,Team:"mywar.friendly",PersistenceRequired:1b,Tags:["mywar.soldier","mywar.foot_soldier","mywar.modified"],ArmorItems:[{},{},{},{id:"minecraft:iron_helmet",Count:1b,tag:{Unbreakable:1b}}],Attributes:[{Name:generic.follow_range,Base:500},{Name:generic.movement_speed,Base:0.27},{Name:generic.attack_damage,Base:2},{Name:generic.attack_knockback,Base:1}]}}}}}}}

#Foot soldier zombie enemy 
data merge storage mywar:storage {root:{perm:{soldier:{foot_soldier:{zombie:{enemy:{CustomName:'{"text":"Foot Soldier","bold":false,"italic":false}',CustomNameVisible:1b,IsBaby:0b,DeathLootTable:"mywar:item/deplete",Team:"mywar.enemy",PersistenceRequired:1b,Tags:["mywar.soldier","mywar.foot_soldier","mywar.modified"],ArmorItems:[{},{},{},{id:"minecraft:iron_helmet",Count:1b,tag:{Unbreakable:1b}}],Attributes:[{Name:generic.follow_range,Base:500},{Name:generic.movement_speed,Base:0.27},{Name:generic.attack_damage,Base:2},{Name:generic.attack_knockback,Base:1}]}}}}}}}

#Archer friendly
data merge storage mywar:storage {root:{perm:{soldier:{archer:{friendly:{CustomName:'{"text":"Archer","bold":false,"italic":false}',CustomNameVisible:1b,HandItems:[{},{id:"minecraft:bow", Count:1b}],Team:"mywar.friendly",PersistenceRequired:1b,Tags:["mywar.soldier","mywar.archer","mywar.modified"],ArmorItems:[{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:iron_helmet",Count:1b,tag:{Unbreakable:1b}}],Attributes:[{Name:generic.follow_range,Base:500},{Name:generic.movement_speed,Base:0.3},{Name:generic.attack_damage,Base:2.5},{Name:generic.attack_knockback,Base:1}]}}}}}}

#Archer enemy 
data merge storage mywar:storage {root:{perm:{soldier:{archer:{enemy:{CustomName:'{"text":"Archer","bold":false,"italic":false}',HandItems:[{},{id:"minecraft:bow", Count:1b}],CustomNameVisible:1b,DeathLootTable:"mywar:item/deplete",Team:"mywar.enemy",PersistenceRequired:1b,Tags:["mywar.soldier","mywar.archer","mywar.modified"],ArmorItems:[{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:iron_helmet",Count:1b,tag:{Unbreakable:1b}}],Attributes:[{Name:generic.follow_range,Base:500},{Name:generic.movement_speed,Base:0.3},{Name:generic.attack_damage,Base:2.5},{Name:generic.attack_knockback,Base:1}]}}}}}}

#Swordsman friendly
data merge storage mywar:storage {root:{perm:{soldier:{swordsmen:{friendly:{CustomName:'{"text":"Swordsman","bold":false,"italic":false}',HandItems:[{},{id:"minecraft:wooden_sword",Count:1b}],ArmorItems:[{id:"chainmail_boots", Count:1b,tag:{Unbreakable:1b}},{id:"chainmail_leggings",Count:1b,tag:{Unbreakable:1b}},{id:"chainmail_chestplate", Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:iron_helmet",Count:1b,tag:{Unbreakable:1b}}],CustomNameVisible:1b,IsBaby:0b,Team:"mywar.friendly",PersistenceRequired:1b,Tags:["mywar.soldier","mywar.swordsmen","mywar.modified"],Attributes:[{Name:generic.follow_range,Base:500},{Name:generic.movement_speed,Base:0.27},{Name:generic.attack_damage,Base:2},{Name:generic.attack_knockback,Base:1}]}}}}}}

#Swordsman enemy 
data merge storage mywar:storage {root:{perm:{soldier:{swordsmen:{enemy:{CustomName:'{"text":"Swordsman","bold":false,"italic":false}',HandItems:[{},{id:"minecraft:wooden_sword",Count:1b}],CustomNameVisible:1b,IsBaby:0b,DeathLootTable:"mywar:item/deplete",Team:"mywar.enemy",PersistenceRequired:1b,Tags:["mywar.soldier","mywar.swordsmen","mywar.modified"],ArmorItems:[{id:"chainmail_boots", Count:1b,tag:{Unbreakable:1b}},{id:"chainmail_leggings",Count:1b,tag:{Unbreakable:1b}},{id:"chainmail_chestplate", Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:iron_helmet",Count:1b,tag:{Unbreakable:1b}}],Attributes:[{Name:generic.follow_range,Base:500},{Name:generic.movement_speed,Base:0.27},{Name:generic.attack_damage,Base:2},{Name:generic.attack_knockback,Base:1}]}}}}}}

#Knight friendly
data merge storage mywar:storage {root:{perm:{soldier:{knight:{friendly:{CustomName:'{"text":"knight","bold":false,"italic":false}',HandItems:[{},{id:"minecraft:stone_sword",Count:1b}],ArmorItems:[{id:"iron_boots", Count:1b,tag:{Unbreakable:1b}},{id:"iron_leggings",Count:1b,tag:{Unbreakable:1b}},{id:"iron_chestplate", Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:iron_helmet",Count:1b,tag:{Unbreakable:1b}}],CustomNameVisible:1b,IsBaby:0b,Team:"mywar.friendly",PersistenceRequired:1b,Tags:["mywar.soldier","mywar.knight","mywar.modified"],Attributes:[{Name:generic.follow_range,Base:500},{Name:generic.movement_speed,Base:0.27},{Name:generic.attack_damage,Base:2},{Name:generic.attack_knockback,Base:1}]}}}}}}

#Knight enemy 
data merge storage mywar:storage {root:{perm:{soldier:{knight:{enemy:{CustomName:'{"text":"knight","bold":false,"italic":false}',HandItems:[{},{id:"minecraft:stone_sword",Count:1b}],CustomNameVisible:1b,IsBaby:0b,DeathLootTable:"mywar:item/deplete",Team:"mywar.enemy",PersistenceRequired:1b,Tags:["mywar.soldier","mywar.knight","mywar.modified"],ArmorItems:[{id:"iron_boots", Count:1b,tag:{Unbreakable:1b}},{id:"iron_leggings",Count:1b,tag:{Unbreakable:1b}},{id:"iron_chestplate", Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:iron_helmet",Count:1b,tag:{Unbreakable:1b}}],Attributes:[{Name:generic.follow_range,Base:500},{Name:generic.movement_speed,Base:0.27},{Name:generic.attack_damage,Base:2},{Name:generic.attack_knockback,Base:1}]}}}}}}

#Mage friendly
data merge storage mywar:storage {root:{perm:{soldier:{mage:{friendly:{CustomName:'{"text":"Mage","bold":false,"italic":false}',ArmorItems:[{id:"", Count:1b,tag:{Unbreakable:1b}},{id:"",Count:1b,tag:{Unbreakable:1b}},{id:"leather_chestplate", Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:leather_helmet",Count:1b,tag:{Unbreakable:1b}}],CustomNameVisible:1b,IsBaby:0b,Team:"mywar.friendly",PersistenceRequired:1b,Tags:["mywar.soldier","mywar.mage","mywar.modified"],Attributes:[{Name:generic.follow_range,Base:500},{Name:generic.movement_speed,Base:0.27},{Name:generic.attack_damage,Base:2},{Name:generic.attack_knockback,Base:1}]}}}}}}

#Mage enemy 
data merge storage mywar:storage {root:{perm:{soldier:{mage:{enemy:{CustomName:'{"text":"Mage","bold":false,"italic":false}',CustomNameVisible:1b,IsBaby:0b,DeathLootTable:"mywar:item/deplete",Team:"mywar.enemy",PersistenceRequired:1b,Tags:["mywar.soldier","mywar.mage","mywar.modified"],ArmorItems:[{id:"", Count:1b,tag:{Unbreakable:1b}},{id:"",Count:1b,tag:{Unbreakable:1b}},{id:"leather_chestplate", Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:leather_helmet",Count:1b,tag:{Unbreakable:1b}}],Attributes:[{Name:generic.follow_range,Base:500},{Name:generic.movement_speed,Base:0.27},{Name:generic.attack_damage,Base:2},{Name:generic.attack_knockback,Base:1}]}}}}}}


##Data for items

#Waypoint
data merge storage mywar:storage {root:{perm:{wp:{id: "minecraft:carrot_on_a_stick", Count: 1b, tag: {Damage: 0, CustomModelData: 8, mywar.waypoint: 1b, display: {Name: '{"text":"Waypoint","color":"yellow","italic":false}'}}}}}}