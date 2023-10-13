####################
# Initiates the player to play
####################

tellraw @s {"translate":"The Horsing Around Resource Pack is not installed.","color":"red","with":[{"translate":"commands.hoar.initiate","color":"white","with":[{"translate":"pack.hoar","color":"#683D24","underlined":true,"hoverEvent":{"action":"show_text","contents":{"translate":"pack.hoar.hover_event"}},"clickEvent":{"action":"open_url","value":"https://github.com/RagtimeGal/Horsing-Around/wiki"}}]}]}
scoreboard players reset @s hoar.dummy2
scoreboard players reset @s hoar.dummy
scoreboard players enable @s hoar.wiki
