####################
# Player second clock
####################

## Used Goat Horn
execute if score @s hoar.goat_horn_cooldown matches 1.. run scoreboard players remove @s hoar.goat_horn_cooldown 1
execute if score @s hoar.goat_horn_cooldown matches 0 run tag @s remove hoar.using_goat_horn
