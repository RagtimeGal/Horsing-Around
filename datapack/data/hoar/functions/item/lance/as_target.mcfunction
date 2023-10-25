####################
# Runs as the jousters target
####################

tag @p[tag=hoar.raycaster] add hoar.tag
scoreboard players reset #success hoar.dummy

## Calculate damage
scoreboard players operation @p[tag=hoar.tag] hoar.horse_data *= $multiplyby hoar.horse_data
execute store result storage hoar:storage root.damage double 0.001 run scoreboard players get @p[tag=hoar.tag] hoar.horse_data

## Branch whether the target has a shield or not
# Shieldless
execute unless predicate hoar:entity_properties/holding_shield run function hoar:item/lance/shieldless_target/main with storage hoar:storage root
# Shielded
execute if predicate hoar:entity_properties/holding_shield run function hoar:item/lance/shielded_target/main with storage hoar:storage root
