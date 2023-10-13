############################################################
# Repairs items in the proper order as intended
############################################################

# Set proper values for the amount that the item should be repaired
scoreboard players set #item_durability_change hoar.dummy 2
scoreboard players operation #item_durability_change hoar.dummy *= @s hoar.old_xp

# Repair items in the proper order
execute if entity @s[predicate=hoar:entity_properties/has_mendable_item_in_mainhand] run function hoar:item/durability/slots/mainhand
execute if entity @s[predicate=!hoar:entity_properties/has_mendable_item_in_mainhand,predicate=hoar:entity_properties/has_mendable_item_in_offhand] run function hoar:item/durability/slots/offhand

# Subtract xp based on how much you used
scoreboard players operation #item_durability_change hoar.dummy /= #2 hoar.dummy
function hoar:item/durability/mending/xp_subtraction_loop
