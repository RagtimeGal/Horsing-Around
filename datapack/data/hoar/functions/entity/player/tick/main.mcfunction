####################
# Runs every tick for all players
####################

## Non-Spectator
execute if entity @s[gamemode=!spectator] run function hoar:entity/player/tick/non_spectators

## Triggers
execute if score @s hoar.wiki matches 1 run function hoar:entity/player/wiki
