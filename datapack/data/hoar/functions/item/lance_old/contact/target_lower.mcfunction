####################
# Runs as the target if their shield has lower durability
####################

## Dismount
execute if predicate hoar:entity_properties/has_vehicle run ride @s dismount
## Shatter
execute if entity @s[type=minecraft:player,nbt={SelectedItem:{id:"minecraft:shield"}}] run item modify entity @s weapon.mainhand hoar:reduce_count/1
execute if entity @s[type=minecraft:player,nbt=!{SelectedItem:{id:"minecraft:shield"}}] run item modify entity @s weapon.offhand hoar:reduce_count/1
execute if entity @s[type=!minecraft:player,nbt={HandItems:[{id:"minecraft:shield"},{}]}] run item modify entity @s weapon.mainhand hoar:reduce_count/1
execute if entity @s[type=!minecraft:player,nbt={HandItems:[{},{id:"minecraft:shield"}]}] run item modify entity @s weapon.offhand hoar:reduce_count/1
playsound minecraft:entity.item.break player @a[distance=..16]

say target lower