####################
# Runs as the jousters target if they don't have a shield
####################

## Damage target
$execute store success score #success hoar.dummy run damage @s $(damage) hoar:lance by @p[tag=hoar.tag]
## Damage owner's lance
execute if score #success hoar.dummy matches 1 as @p[tag=hoar.tag] run function hoar:item/lance/damage_lance
## Dismount
ride @s dismount