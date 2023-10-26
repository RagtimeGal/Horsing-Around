####################
# Runs when Glue is used
####################

tag @s add hoar.raycaster
execute anchored eyes run function hoar:item/glue/raycast
tag @s remove hoar.raycaster
tag @s remove hoar.tag
advancement revoke @s only hoar:technical/player_interacted_with_entity/used_glue
