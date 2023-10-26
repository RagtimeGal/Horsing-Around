####################
# Runs when a Glued entity is inside of water
####################

tag @s remove hoar.glued
attribute @s minecraft:generic.movement_speed modifier remove 0-2-0-3-3
particle minecraft:item_slime ~ ~ ~ 0.5 1 0.5 0 25 normal
