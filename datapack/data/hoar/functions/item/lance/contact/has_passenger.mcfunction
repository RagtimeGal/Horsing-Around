####################
# Runs as the passenger
####################

## Shield Logic
execute if entity @s[type=minecraft:player,predicate=hoar:entity_properties/holding_shield,nbt={SelectedItem:{id:"minecraft:shield"}}] store result score target.subtract hoar.dummy run data get entity @s SelectedItem.tag.Damage
execute if entity @s[type=minecraft:player,predicate=hoar:entity_properties/holding_shield,nbt=!{SelectedItem:{id:"minecraft:shield"}}] store result score target.subtract hoar.dummy run data get entity @s Inventory[{Slot:-106b}].tag.Damage
execute if entity @s[type=!minecraft:player,predicate=hoar:entity_properties/holding_shield,nbt={HandItems:[{id:"minecraft:shield"},{}]}] store result score target.subtract hoar.dummy run data get entity @s HandItems[0].tag.Damage
execute if entity @s[type=!minecraft:player,predicate=hoar:entity_properties/holding_shield,nbt={HandItems:[{},{id:"minecraft:shield"}]}] store result score target.subtract hoar.dummy run data get entity @s HandItems[1].tag.Damage
execute if score target.subtract hoar.dummy matches 1.. run scoreboard players set target.shield hoar.dummy 337
execute if score target.subtract hoar.dummy matches 1.. run scoreboard players operation target.shield hoar.dummy -= target.subtract hoar.dummy
execute unless entity @s[predicate=hoar:entity_properties/holding_shield] run function hoar:item/lance/contact/no_shield
execute if score player.lance hoar.dummy > target.shield hoar.dummy run function hoar:item/lance/contact/target_lower
execute if score player.lance hoar.dummy = target.shield hoar.dummy run function hoar:item/lance/contact/equal
execute if score player.lance hoar.dummy < target.shield hoar.dummy as @p[tag=hoar.tag] run function hoar:item/lance/contact/player_lower
