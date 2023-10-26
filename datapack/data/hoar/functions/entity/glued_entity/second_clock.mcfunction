####################
# Runs as glued entities every second
####################

execute if predicate hoar:random_chance/1_25 run particle minecraft:item_slime ~ ~ ~ 0.5 1 0.5 0 25 normal
execute if block ~ ~ ~ water run function hoar:entity/glued_entity/unglue