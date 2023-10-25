####################
# Runs as the jousters target if they have a shield
####################

## Get Shield durability
# Entity
execute if entity @s[type=!minecraft:player,predicate=hoar:entity_properties/holding_shield_in_mainhand] store result score $durability.shield hoar.dummy run data get entity @s HandItems[0].tag.Damage -1
execute if entity @s[type=!minecraft:player,predicate=!hoar:entity_properties/holding_shield_in_mainhand] store result score $durability.shield hoar.dummy run data get entity @s HandItems[1].tag.Damage -1
# Player
execute if entity @s[type=minecraft:player,predicate=hoar:entity_properties/holding_shield_in_mainhand] store result score $durability.shield hoar.dummy run data get entity @s SelectedItem.tag.Damage -1
execute if entity @s[type=minecraft:player,predicate=!hoar:entity_properties/holding_shield_in_mainhand] store result score $durability.shield hoar.dummy run data get entity @s Inventory[{Slot:-106b}].tag.Damage -1
# Add
scoreboard players add $durability.shield hoar.dummy 337
## Fork based on durability
# Lance = Shield || Break Both
execute if score $durability.lance hoar.dummy = $durability.shield hoar.dummy run function hoar:item/lance/shielded_target/break_both
# Shield > Lance || Break Lance
execute if score $durability.lance hoar.dummy < $durability.shield hoar.dummy as @p[tag=hoar.tag] run function hoar:item/lance/shielded_target/break_lance
execute if score $durability.lance hoar.dummy < $durability.shield hoar.dummy run function hoar:item/lance/damage_shield
# Lance > Shield || Break Shield
execute if score $durability.lance hoar.dummy > $durability.shield hoar.dummy run function hoar:item/lance/shielded_target/break_shield
execute if score $durability.lance hoar.dummy > $durability.shield hoar.dummy as @p[tag=hoar.tag] run advancement grant @s only hoar:husbandry/win_a_joust
