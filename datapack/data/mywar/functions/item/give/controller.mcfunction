########
#Gives controller item
#Author: DaveHue
########

#Give item
give @s carrot_on_a_stick{mywar.controller:1b,mywar.item:1b,CustomModelData:1,display:{Name:'[{"translate":"mywar.item.controller.name1","color":"aqua","italic":"false"},{"translate":"mywar.item.controller.name2","color":"yellow","italic":"false"},{"translate":"mywar.item.controller.name3","color":"green","italic":"false"},{"translate":"mywar.item.controller.name4","with":[{"translate":"mywar.item.controller.unset"}],"color":"gold","italic":"false"}]',Lore:['{"translate":"mywar.item.controller.lore.description","with":[{"translate":"mywar.item.controller.lore.description.none"}],"color":"gray","italic":"false"}','{"text":"━━━━━━━━━━","color":"white","italic":"false"}','{"translate":"mywar.item.controller.lore.right_click","color":"yellow","italic":"false"}','{"translate":"mywar.item.controller.lore.shift_right_click","color":"yellow","italic":"false"}']}}

#Scoreboard 
scoreboard players reset @s mywar.controller_item
scoreboard players enable @s mywar.controller_item

#Revoke advancement
advancement revoke @s only mywar:player/trigger/controller
