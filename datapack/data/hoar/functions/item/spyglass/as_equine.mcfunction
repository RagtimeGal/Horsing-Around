####################
# Runs as the spotted equine
####################

scoreboard players set found_equine hoar.dummy 1
## Store Attributes
execute store result score speed hoar.dummy run data get entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base 100
execute store result score jump hoar.dummy run data get entity @s Attributes[{Name:"minecraft:horse.jump_strength"}].Base 100
execute store result score health hoar.dummy run data get entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base 1
## Give player Tag
tag @p[tag=hoar.raycaster] add hoar.tag
tag @s add hoar.temp