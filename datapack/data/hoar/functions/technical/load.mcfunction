####################
# Runs when loaded
####################

## Create Scoreboards
scoreboard objectives add hoar.dummy dummy
scoreboard objectives add hoar.wiki dummy
scoreboard objectives add hoar.horse_pos.x dummy
scoreboard objectives add hoar.horse_pos.y dummy
scoreboard objectives add hoar.horse_pos.z dummy
scoreboard objectives add hoar.horse_data dummy
scoreboard players set $multiplyby hoar.horse_data 5
scoreboard objectives add hoar.old_xp dummy
scoreboard objectives add hoar.current_xp xp
scoreboard objectives add hoar.warped_fungus_on_a_stick minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add hoar.goat_horn_cooldown dummy

## Run on Load
tellraw @a[predicate=hoar:entity_properties/debug_player] [{"translate":"debug.prefix","color":"yellow","bold":true},{"translate":"commands.hoar.reload.success","color":"white","bold":false}]
execute unless score #server_version hoar.dummy matches 1 run function hoar:technical/initiate
