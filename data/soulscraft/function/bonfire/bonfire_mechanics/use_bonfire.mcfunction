title @s times 15 20 15
title @s title {"text":"RESTED AT BONFIRE","color":"white", "bold":true} 

execute if score @s souls matches 5.. run function soulscraft:bonfire/bonfire_addons/get_souls

effect give @s regeneration 1 255 true
effect give @s minecraft:blindness 2 255 false

playsound minecraft:entity.evoker.prepare_summon master @s ~ ~ ~

spawnpoint

execute as @n[type=chest_minecart,tag=bonfire,distance=..5] at @s run function soulscraft:bonfire/bonfire_gui/exit_bonfire_views
