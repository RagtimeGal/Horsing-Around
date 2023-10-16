####################
# Runs as the jousters target
####################

tag @p[tag=hoar.raycaster] add hoar.tag

## Branch whether the target has a shield or not
# Shielded
execute if predicate hoar:entity_properties/holding_shield run function hoar:item/lance/shielded_target/main
# Shieldless
execute unless predicate hoar:entity_properties/holding_shield run function hoar:item/lance/shieldeless_target/main
