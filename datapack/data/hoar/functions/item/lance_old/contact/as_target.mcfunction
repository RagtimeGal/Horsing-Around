####################
# Runs as the jousters target
####################

tag @p[tag=hoar.raycaster] add hoar.tag
## Has passenger or not
execute if predicate hoar:entity_properties/has_passenger on passengers run function hoar:item/lance/contact/has_passenger
execute unless predicate hoar:entity_properties/has_passenger run function hoar:item/lance/contact/no_passenger