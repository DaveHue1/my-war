#####
#Restore soldiers
#Author: DaveHue
#####

#Foot soldier
execute if predicate mywar:player/trade/foot_soldier run function mywar:entity/player/trade/foot_soldier/restore

#Archer
execute if predicate mywar:player/trade/archer run function mywar:entity/player/trade/archer/restore

#Swordsmen
execute if predicate mywar:player/trade/swordsmen run function mywar:entity/player/trade/swordsmen/restore

#Knight
execute if predicate mywar:player/trade/knight run function mywar:entity/player/trade/knight/restore

#Mage
execute if predicate mywar:player/trade/mage run function mywar:entity/player/trade/mage/restore

#Message
tellraw @s {"translate":"mywar.message.player.trade.limit_reached","color":"red"}

#Reset scores
scoreboard players reset @s mywar.traded
