####################
# Make's sure the function is being ran on the topmost passenger
####################

execute unless predicate hoar:entity_properties/has_passenger run function hoar:item/lance/as_target
execute if predicate hoar:entity_properties/has_passenger on passengers run function hoar:item/lance/on_passenger