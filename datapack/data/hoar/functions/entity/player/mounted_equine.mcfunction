####################
# Runs when player mounts an equine
####################

execute store result score @s hoar.horse_pos.x run data get entity @s Pos[0] 100
execute store result score @s hoar.horse_pos.y run data get entity @s Pos[1] 100
execute store result score @s hoar.horse_pos.z run data get entity @s Pos[2] 100

advancement revoke @s only hoar:technical/started_riding/started_riding_equine