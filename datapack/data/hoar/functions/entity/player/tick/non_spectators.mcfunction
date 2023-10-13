####################
# Runs every tick for all players who aren't in spectator
####################

## Commands for holding WFOAS
execute if entity @s[predicate=hoar:entity_properties/holding_custom_warped_fungus_on_a_stick] run function hoar:item/warped_fungus_on_a_stick/holding

## Mending Items
execute if entity @s[predicate=hoar:entity_properties/has_mendable_item] positioned ~ ~0.805 ~ run function hoar:item/durability/mending/xp_orb_test/main