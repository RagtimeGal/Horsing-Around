############################################################
# Tests if your XP level was changed by an XP orb
############################################################

# Calculations for if your xp level changed or not
scoreboard players operation @s hoar.old_xp -= @s hoar.current_xp
tag @s remove hoar.saw_xp_orb
execute if score @s hoar.old_xp matches ..-1 run function hoar:item/durability/mending/repair_priority_list
scoreboard players reset @s hoar.old_xp
