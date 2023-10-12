####################
# Runs when the player is looking at an equine with a spyglass
####################

## Raycast
tag @s add hoar.raycaster
execute at @s anchored eyes run function hoar:item/spyglass/raycast
tag @s remove hoar.raycaster
tag @s remove hoar.tag
execute unless score found_equine hoar.dummy matches 1 run title @s actionbar {"translate":"item.hoar.spyglass.too_far","color":"white"}
execute if score found_equine hoar.dummy matches 1 run title @s actionbar  {"translate":"item.hoar.spyglass.stats","with":[{"selector":"@e[tag=hoar.temp]"},{"translate":"item.hoar.spylgass.stats.speed","with":[{"score":{"name":"speed","objective":"hoar.dummy"},"color":"white","font":"minecraft:default"}],"color":"white","font":"hoar:stat_symbols"},{"translate":"item.hoar.spylgass.stats.jump","with":[{"score":{"name":"jump","objective":"hoar.dummy"},"color":"white","font":"minecraft:default"}],"color":"white","font":"hoar:stat_symbols"},{"translate":"item.hoar.spylgass.stats.health","with":[{"score":{"name":"health","objective":"hoar.dummy"},"color":"white","font":"minecraft:default"}],"color":"white","font":"hoar:stat_symbols"}],"color":"white"}
## Revoke Advancement
advancement revoke @s only hoar:technical/using_item/spyglass_at_equine
scoreboard players reset speed hoar.dummy
scoreboard players reset jump hoar.dummy
scoreboard players reset health hoar.dummy
scoreboard players reset found_equine hoar.dummy
tag @e[tag=hoar.temp] remove hoar.temp