####################
# Raycasts to find the equine
####################

scoreboard players set found_equine hoar.dummy 0
execute positioned ~-0.01 ~-0.99 ~-0.01 as @e[dx=0,type=#hoar:equine,tag=!smithed.entity,limit=1] positioned ~-0.99 ~0.99 ~-0.99 if entity @s[dx=0] run function hoar:item/spyglass/as_equine
execute if entity @s[distance=..25,tag=!hoar.tag] positioned ^ ^ ^0.01 run function hoar:item/spyglass/raycast
