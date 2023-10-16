####################
# Runs if both jousters have equal durability
####################

## Dismount
execute if predicate hoar:entity_properties/has_vehicle run ride @s dismount
execute as @p[tag=hoar.raycaster] run ride @s dismount
## Shatter
execute if predicate hoar:random_chance/1_2 if entity @p[tag=hoar.raycaster,nbt={SelectedItem:{tag:{hoar:{}}}}] run item modify entity @s weapon.mainhand hoar:reduce_count/1
execute if predicate hoar:random_chance/1_2 if entity @p[tag=hoar.raycaster,nbt=!{SelectedItem:{tag:{hoar:{}}}}] run item modify entity @s weapon.offhand hoar:reduce_count/1
execute if predicate hoar:random_chance/1_2 if entity @s[type=minecraft:player,nbt={SelectedItem:{id:"minecraft:shield"}}] run item modify entity @s weapon.mainhand hoar:reduce_count/1
execute if predicate hoar:random_chance/1_2 if entity @s[type=minecraft:player,nbt=!{SelectedItem:{id:"minecraft:shield"}}] run item modify entity @s weapon.offhand hoar:reduce_count/1
execute if predicate hoar:random_chance/1_2 if entity @s[type=!minecraft:player,nbt={HandItems:[{id:"minecraft:shield"},{}]}] run item modify entity @s weapon.mainhand hoar:reduce_count/1
execute if predicate hoar:random_chance/1_2 if entity @s[type=!minecraft:player,nbt={HandItems:[{},{id:"minecraft:shield"}]}] run item modify entity @s weapon.offhand hoar:reduce_count/1
playsound minecraft:entity.item.break player @a[distance=..16]

say equal