####################
# Runs as the jousters target if their shield has less durability than the lance
####################

## Break Shield
# Remove if player
execute if entity @s[type=minecraft:player,nbt={SelectedItem:{id:"minecraft:shield"}}] run item replace entity @s weapon.mainhand with minecraft:air
execute if entity @s[type=minecraft:player,nbt=!{SelectedItem:{id:"minecraft:shield"}}] run item replace entity @s weapon.offhand with minecraft:air
# Remove if entity
execute if entity @s[type=!minecraft:player,predicate=hoar:entity_properties/holding_shield_in_mainhand] run item replace entity @s weapon.mainhand with minecraft:air
execute if entity @s[type=!minecraft:player,predicate=!hoar:entity_properties/holding_shield_in_mainhand] run item replace entity @s weapon.offhand with minecraft:air
# Playsound
playsound minecraft:entity.item.break player @a[distance=..16]
## Dismount
ride @s dismount
## Damage owner's lance
execute if score #success hoar.dummy matches 1 as @p[tag=hoar.tag] run function hoar:item/lance/damage_lance
