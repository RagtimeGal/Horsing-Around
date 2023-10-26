####################
# Second clock
####################

## Player
execute as @a at @s run function hoar:entity/player/second_clock

## Reschedule
schedule function hoar:technical/second_clock 1s
