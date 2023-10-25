####################
# Runs as the jouster and their target if both have equal durability
####################

## Break Both
# Break Shield
execute if predicate hoar:random_chance/1_2 run function hoar:item/lance/shielded_target/break_shield
# Break Lance
execute if predicate hoar:random_chance/1_2 as @p[tag=hoar.tag] run function hoar:item/lance/shielded_target/break_lance
