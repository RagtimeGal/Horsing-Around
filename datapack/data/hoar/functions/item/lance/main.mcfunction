####################
# Runs as the used lance's owner
####################

## Get owner's Lance durability
execute if entity @s[predicate=hoar:entity_properties/holding_any_lance,nbt={SelectedItem:{tag:{hoar:{}}}}] store result score $durability.lance hoar.dummy run data get entity @s SelectedItem.tag.hoar.durability[0]
execute if entity @s[predicate=hoar:entity_properties/holding_any_lance,nbt=!{SelectedItem:{tag:{hoar:{}}}}] store result score $durability.lance hoar.dummy run data get entity @s Inventory[{Slot:-106b}].tag.hoar.durability[0]

## Raycast to find Target
data remove storage hoar:storage root.temp
tag @s add hoar.raycaster
execute on vehicle run tag @s add hoar.raycaster
function hoar:item/lance/raycast
tag @s remove hoar.raycaster
execute on vehicle run tag @s remove hoar.raycaster
tag @s remove hoar.tag

## Reset target's shield durability
scoreboard players reset target.shield hoar.dummy
