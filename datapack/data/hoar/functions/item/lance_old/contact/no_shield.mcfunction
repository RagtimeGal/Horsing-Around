####################
# Runs as the target if they do not have a shield
####################

## Dismount
execute if predicate hoar:entity_properties/has_vehicle run ride @s dismount

say no shield