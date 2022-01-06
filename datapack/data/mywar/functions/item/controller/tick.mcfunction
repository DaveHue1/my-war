########
#Runs controller item stuff
#Author: Dave Hue
########

#Detects if the controller is on a previous mode
execute unless predicate mywar:player/sneaking if predicate mywar:controller/controller_unset run scoreboard players set @s mywar.controller 0
execute unless predicate mywar:player/sneaking if predicate mywar:controller/deploy run scoreboard players set @s mywar.controller 1
execute unless predicate mywar:player/sneaking if predicate mywar:controller/spread run scoreboard players set @s mywar.controller 2
execute unless predicate mywar:player/sneaking if predicate mywar:controller/aggro run scoreboard players set @s mywar.controller 3
execute unless predicate mywar:player/sneaking if predicate mywar:controller/home_base run scoreboard players set @s mywar.controller 4
execute unless predicate mywar:player/sneaking if predicate mywar:controller/collect run scoreboard players set @s mywar.controller 5
execute unless predicate mywar:player/sneaking if predicate mywar:controller/tax run scoreboard players set @s mywar.controller 6
execute unless predicate mywar:player/sneaking if predicate mywar:controller/invade run scoreboard players set @s mywar.controller 7

#Message
execute unless predicate mywar:player/sneaking if predicate mywar:controller/controller_unset run title @s actionbar {"translate":"mywar.message.controller.use","with":[{"keybind":"key.use"},{"keybind":"key.sneak"}]}

#Cycles through modes
execute if predicate mywar:player/sneaking run scoreboard players add @s mywar.controller 1

#Reset score
execute if score @s mywar.controller matches 8.. run scoreboard players set @s mywar.controller 1

#Sets mode
execute if score @s mywar.controller matches 1 run item modify entity @s weapon.mainhand mywar:controller/deploy
execute if score @s mywar.controller matches 2 run item modify entity @s weapon.mainhand mywar:controller/spread
execute if score @s mywar.controller matches 3 run item modify entity @s weapon.mainhand mywar:controller/aggro
execute if score @s mywar.controller matches 4 run item modify entity @s weapon.mainhand mywar:controller/home_base
execute if score @s mywar.controller matches 5 run item modify entity @s weapon.mainhand mywar:controller/collect
execute if score @s mywar.controller matches 6 run item modify entity @s weapon.mainhand mywar:controller/tax
execute if score @s mywar.controller matches 7 run item modify entity @s weapon.mainhand mywar:controller/invade

#Deploys units
execute unless predicate mywar:player/sneaking if predicate mywar:controller/deploy run function mywar:item/controller/deploy/deploy

#Spreads units
execute unless predicate mywar:player/sneaking if predicate mywar:controller/spread run function mywar:item/controller/spread/spread

#Aggros units
execute unless predicate mywar:player/sneaking if predicate mywar:controller/aggro run function mywar:item/controller/aggro/aggro

#Teleports player back to home base
execute unless predicate mywar:player/sneaking if predicate mywar:controller/home_base run function mywar:item/controller/home_base/home_base_x_init

#Collects soldiers 
execute unless predicate mywar:player/sneaking if predicate mywar:controller/collect run function mywar:item/controller/collect/collect

#Tax soldiers
execute unless predicate mywar:player/sneaking if predicate mywar:controller/tax run function mywar:item/controller/tax/tax

#Invade village
execute unless predicate mywar:player/sneaking if predicate mywar:controller/invade run function mywar:item/controller/invade/invade



