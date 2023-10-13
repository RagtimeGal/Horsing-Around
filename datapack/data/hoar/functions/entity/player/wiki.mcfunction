####################
# Provides player wiki link
####################

tellraw @s {"translate":"chat.hoar.wiki","bold":true,"color":"aqua","clickEvent":{"action":"open_url","value":"https://github.com/RagtimeGal/Horsing-Around/wiki"},"hoverEvent":{"action":"show_text","contents":[{"translate":"chat.hoar.wiki.hover_event"}]}}
scoreboard players set @s hoar.wiki 0
scoreboard players enable @s hoar.wiki