####################
# Runs if the player holding the lance has a target
####################

data remove storage hoar:storage root.temp
tag @s add hoar.raycaster
function hoar:item/lance/target_raycast
tag @s remove hoar.raycaster
tag @s remove hoar.tag
scoreboard players reset target.shield hoar.dummy