####################
# Runs as the player if their shield has lower durability
####################

## Dismount
ride @s dismount
## Shatter
execute if entity @s[nbt={SelectedItem:{tag:{hoar:{}}}}] run item modify entity @s weapon.mainhand hoar:reduce_count/1
execute if entity @s[nbt=!{SelectedItem:{tag:{hoar:{}}}}] run item modify entity @s weapon.offhand hoar:reduce_count/1
playsound minecraft:entity.item.break player @a[distance=..16]

say player lower