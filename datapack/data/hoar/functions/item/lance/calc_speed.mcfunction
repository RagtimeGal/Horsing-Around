####################
# Calculates the player's speed
####################

## Store Horses POS
execute store result score $x hoar.horse_data run data get entity @s Pos[0] 100
execute store result score $y hoar.horse_data run data get entity @s Pos[1] 100
execute store result score $z hoar.horse_data run data get entity @s Pos[2] 100

scoreboard players operation $dx hoar.horse_data = $x hoar.horse_data
scoreboard players operation $dx hoar.horse_data -= @s hoar.horse_pos.x
scoreboard players operation $dx hoar.horse_data *= $dx hoar.horse_data

scoreboard players operation $dy hoar.horse_data = $y hoar.horse_data
scoreboard players operation $dy hoar.horse_data -= @s hoar.horse_pos.y
scoreboard players operation $dy hoar.horse_data *= $dy hoar.horse_data

scoreboard players operation $dz hoar.horse_data = $z hoar.horse_data
scoreboard players operation $dz hoar.horse_data -= @s hoar.horse_pos.z
scoreboard players operation $dz hoar.horse_data *= $dz hoar.horse_data

scoreboard players operation $speed hoar.horse_data = $dx hoar.horse_data
scoreboard players operation $speed hoar.horse_data += $dy hoar.horse_data
scoreboard players operation $speed hoar.horse_data += $dz hoar.horse_data
## Store Horses current POS as its previous
scoreboard players operation @s hoar.horse_pos.x = $x hoar.horse_data
scoreboard players operation @s hoar.horse_pos.y = $y hoar.horse_data
scoreboard players operation @s hoar.horse_pos.z = $z hoar.horse_data
