####################
# Runs when player is holding wfoas
####################

## Lance
execute if entity @s[predicate=hoar:entity_properties/is_jousting] on vehicle run function hoar:item/lance/calc_speed
execute if entity @s[predicate=hoar:entity_properties/is_jousting,scores={hoar.warped_fungus_on_a_stick=1..}] if score $speed hoar.horse_data matches 500.. run function hoar:item/lance/main

## Strider
execute if entity @s[predicate=hoar:entity_properties/holding_custom_warped_fungus_on_a_stick] on vehicle if entity @s[type=strider] run effect give @s slowness 1 255 true

## Reset
scoreboard players reset @s hoar.warped_fungus_on_a_stick 