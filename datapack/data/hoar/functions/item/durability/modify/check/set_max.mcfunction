############################################################
# Prevents an overflow past the maximum durability value
############################################################

execute store result score #temp_0 hoar.dummy run data get storage hoar:storage root.temp.item.tag.hoar.durability[0] 1
execute store result score #temp_1 hoar.dummy run data get storage hoar:storage root.temp.item.tag.hoar.durability[1] 1
scoreboard players operation #temp_0 hoar.dummy -= #temp_1 hoar.dummy
execute if score #item_durability_change hoar.dummy < #temp_0 hoar.dummy run scoreboard players operation #item_durability_change hoar.dummy = #temp_0 hoar.dummy
