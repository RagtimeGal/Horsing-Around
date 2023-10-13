############################################################
# Damages an item in a slot by 1
############################################################

scoreboard players set #item_durability_change hoar.dummy 1
function hoar:item/durability/slots/mainhand

advancement revoke @s only hoar:technical/player_hurt_entity/attacked_with_lance