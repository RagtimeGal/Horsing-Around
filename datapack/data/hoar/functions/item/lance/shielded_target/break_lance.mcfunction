####################
# Runs as the jouster if their lance has less durability than the shield
####################

## Break Lance
# Remove
execute if entity @s[predicate=hoar:entity_properties/holding_any_lance,nbt={SelectedItem:{tag:{hoar:{}}}}] run item replace entity @s weapon.mainhand with minecraft:air
execute if entity @s[predicate=hoar:entity_properties/holding_any_lance,nbt=!{SelectedItem:{tag:{hoar:{}}}}] run item replace entity @s weapon.offhand with minecraft:air
# Playsound
playsound minecraft:entity.item.break player @a[distance=..16]
## Dismount
ride @s dismount
