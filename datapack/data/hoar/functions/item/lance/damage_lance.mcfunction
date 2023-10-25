####################
# Damage's the jousters lance if attack was succesfull
####################

execute store result score #item_durability_change hoar.dummy run random value 1..20
function hoar:item/durability/slots/mainhand