####################
# Runs when loaded
####################

## Create Scoreboards
scoreboard objectives add hoar.dummy dummy

## Run on Load
tellraw @a[predicate=hoar:entity_properties/debug_player] [{"translate":"debug.prefix","color":"yellow","bold":true},{"translate":"commands.hoar.reload.success","color":"white","bold":false}]
execute unless score #server_version hoar.dummy matches 1 run function hoar:technical/initiate
