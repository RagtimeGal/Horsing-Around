####################
# Raycasts to find targeted enemy
####################

execute positioned ~-0.01 ~-0.99 ~-0.01 as @e[dx=0,type=!#hoar:inanimate,tag=!smithed.strict,limit=1,tag=!hoar.raycaster] positioned ~-0.99 ~0.99 ~-0.99 if entity @s[dx=0] run function hoar:item/lance/contact/as_target
execute if entity @s[distance=..5,tag=!hoar.tag] positioned ^ ^ ^0.01 run function hoar:item/lance/raycast
