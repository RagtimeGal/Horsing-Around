####################
# Damage's the targets shield
####################

execute store result score #item_durability_change hoar.dummy run random value 1..20
scoreboard players operation $durability.shield hoar.dummy -= #item_durability_change hoar.dummy
# If player
execute if entity @s[type=minecraft:player,nbt={SelectedItem:{id:"minecraft:shield"}}] run item modify entity @s weapon.mainhand hoar:shield_hit_by_lance
execute if entity @s[type=minecraft:player,nbt=!{SelectedItem:{id:"minecraft:shield"}}] run item modify entity @s weapon.offhand hoar:shield_hit_by_lance
# If entity
execute if entity @s[type=!minecraft:player,predicate=hoar:entity_properties/holding_shield_in_mainhand] run item modify entity @s weapon.mainhand hoar:shield_hit_by_lance
execute if entity @s[type=!minecraft:player,predicate=!hoar:entity_properties/holding_shield_in_mainhand] run item modify entity @s weapon.offhand hoar:shield_hit_by_lance
