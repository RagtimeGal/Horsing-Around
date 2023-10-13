############################################################
# Modifies the data of the item
############################################################

# Set the durability tag
execute store result storage hoar:storage root.temp.item.tag.hoar.durability[0] int 1 run scoreboard players get @s hoar.dummy

# Set repaired tag if the max and current durabilities are the same
execute store result score @s hoar.dummy2 run data get storage hoar:storage root.temp.item.tag.hoar.durability[1] 1
data modify storage hoar:storage root.temp.item.tag.hoar.repaired set value 0b
execute if score @s hoar.dummy = @s hoar.dummy2 run data modify storage hoar:storage root.temp.item.tag.hoar.repaired set value 1b
