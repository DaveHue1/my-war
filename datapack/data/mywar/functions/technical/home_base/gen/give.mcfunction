############
#Give the home base items to the player
#Author: DaveHue
############

#Gives the player items
execute as @a[sort=nearest,limit=1] run function mywar:item/give/guide_book
execute as @a[sort=nearest,limit=1] run function mywar:item/give/controller
execute as @a[sort=nearest,limit=1] run function mywar:item/give/village_tracker
execute as @a[sort=nearest,limit=1] run function mywar:item/give/money
execute as @a[sort=nearest,limit=1] run function mywar:item/give/money
give @a[sort=nearest,limit=1] cooked_beef 16