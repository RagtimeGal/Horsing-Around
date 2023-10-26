####################
# Runs when Glue is used
####################

execute positioned ~-0.01 ~-0.99 ~-0.01 as @e[dx=0,type=!#hoar:inanimate,type=!minecraft:player,tag=!smithed.entity,tag=!hoar.raycaster,tag=!hoar.glued,limit=1] positioned ~-0.99 ~0.99 ~-0.99 if entity @s[dx=0] run function hoar:item/glue/as_entity
execute positioned ~-0.01 ~-0.99 ~-0.01 as @e[dx=0,type=!#hoar:inanimate,type=!minecraft:player,tag=smithed.entity,tag=!hoar.raycaster,tag=hoar.glueable,tag=!hoar.glued,limit=1] positioned ~-0.99 ~0.99 ~-0.99 if entity @s[dx=0] run function hoar:item/glue/as_entity
execute if entity @s[distance=..5.5,tag=!hoar.tag] if block ^ ^ ^0.01 #hoar:raycast_ignore positioned ^ ^ ^0.01 run function hoar:item/glue/raycast
