####################
# Second clock
####################

## Player
execute as @a at @s run function hoar:entity/player/second_clock

## Glued Entity
execute as @e[type=!#hoar:inanimate,tag=hoar.glued] at @s run function hoar:entity/glued_entity/second_clock

## Reschedule
schedule function hoar:technical/second_clock 1s
