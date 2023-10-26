####################
# Runs as Glued entity
####################

tag @p[tag=hoar.raycaster] add hoar.tag
tag @s add hoar.glued
particle minecraft:item_slime ~ ~ ~ 0.5 1 0.5 0 25 normal
attribute @s minecraft:generic.movement_speed modifier add 0-2-0-3-3 slowness -100 add
execute as @p[gamemode=!creative,tag=hoar.tag,nbt={SelectedItem:{tag:{hoar:{id:"hoar:glue"}}}}] run item modify entity @s weapon.mainhand hoar:reduce_count/1
execute as @p[gamemode=!creative,tag=hoar.tag,nbt=!{SelectedItem:{tag:{hoar:{id:"hoar:glue"}}}}] run item modify entity @s weapon.offhand hoar:reduce_count/1