####################
# Runs when player is holding wfoas
####################

## Used
execute if entity @s[predicate=hoar:entity_properties/is_jousting] run function hoar:item/lance/main

## Strider
execute if entity @s[predicate=hoar:entity_properties/holding_custom_warped_fungus_on_a_stick] on vehicle if entity @s[type=strider] run effect give @s slowness 1 255 true