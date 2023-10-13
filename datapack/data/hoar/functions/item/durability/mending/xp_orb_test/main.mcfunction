############################################################
# Detects XP orbs near you
############################################################

execute if entity @e[distance=..3,type=experience_orb,tag=!smithed.entity] run tag @s add hoar.tag
execute if entity @s[tag=!hoar.saw_xp_orb,tag=hoar.tag] run function hoar:item/durability/mending/xp_orb_test/set_tags
execute if entity @s[tag=hoar.saw_xp_orb,tag=!hoar.tag] run function hoar:item/durability/mending/xp_change_detect
tag @s remove hoar.tag
