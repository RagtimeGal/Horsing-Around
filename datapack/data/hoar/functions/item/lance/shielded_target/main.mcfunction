####################
# Runs as the jousters target if they have a shield
####################

## Get Shield durability
# Player
execute store result score $durability.shield hoar.dummy run data get entity @s[type=minecraft:player,nbt={SelectedItem:{id:"minecraft:shield"}}] SelectedItem.tag.Damage -1
execute store result score $durability.shield hoar.dummy run data get entity @s[type=minecraft:player,nbt=!{SelectedItem:{id:"minecraft:shield"}}] Inventory[{Slot:-106b}].tag.Damage -1
# Entity
execute store result score $durability.shield hoar.dummy run data get entity @s[type=!minecraft:player,predicate=hoar:entity_properties/holding_shield_in_mainhand] HandItems[0].tag.Damage -1
execute store result score $durability.shield hoar.dummy run data get entity @s[type=!minecraft:player,predicate=!hoar:entity_properties/holding_shield_in_mainhand] HandItems[1].tag.Damage -1
# Add
scoreboard players add $durability.shield hoar.dummy 337
## Fork based on durability
# Shield > Lance
execute if score $durability.lance hoar.dummy < $durability.shield hoar.dummy as @p[tag=hoar.tag] run function hoar:item/lance/shielded_target/break_lance
execute if score $durability.lance hoar.dummy < $durability.shield hoar.dummy run function hoar:item/lance/damage_shield
# Lance > Shield
execute if score $durability.lance hoar.dummy > $durability.shield hoar.dummy run function hoar:item/lance/shielded_target/break_shield
# Lance = Shield
execute if score $durability.lance hoar.dummy = $durability.shield hoar.dummy run function hoar:item/lance/shielded_target/break_both
