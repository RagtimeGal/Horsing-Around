####################
# Runs as the player when holding a lance
####################

## Run as horse
execute on vehicle run function hoar:item/lance/calc_speed
## As target
execute if entity @s[predicate=hoar:entity_properties/holding_any_lance,nbt={SelectedItem:{tag:{hoar:{}}}}] store result score player.lance hoar.dummy run data get entity @s SelectedItem.tag.hoar.durability[0]
execute if entity @s[predicate=hoar:entity_properties/holding_any_lance,nbt=!{SelectedItem:{tag:{hoar:{}}}}] store result score player.lance hoar.dummy run data get entity @s Inventory[{Slot:-106b}].tag.hoar.durability[0]
execute as @s at @s if score $speed hoar.horse_data matches 500.. anchored eyes positioned ^ ^ ^3.8 if entity @e[type=!#hoar:inanimate,tag=!smithed.strict] run function hoar:item/lance/has_target