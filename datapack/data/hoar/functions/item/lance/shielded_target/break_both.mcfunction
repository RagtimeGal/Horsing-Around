####################
# Runs as the jouster and their target if both have equal durability
####################

## Break Both
# Break Shield
function hoar:item/lance/shielded_target/break_shield
# Break Lance
execute as @p[tag=hoar.tag] run function hoar:item/lance/shielded_target/break_lance
