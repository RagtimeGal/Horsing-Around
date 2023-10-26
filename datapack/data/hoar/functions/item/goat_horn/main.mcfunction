####################
# Runs when the player uses a goat horn near a horse
####################

execute if entity @e[type=#hoar:equine,distance=..10] function hoar:item/goat_horn/prepare_storage
tag @s add hoar.using_goat_horn
scoreboard players set @s hoar.goat_horn_cooldown 8
## Revoke Advancement
advancement revoke @s only hoar:technical/using_item/used_goat_horn
