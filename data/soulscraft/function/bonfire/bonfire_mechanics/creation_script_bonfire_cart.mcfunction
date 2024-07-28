summon chest_minecart ~ ~ ~ {Tags:["bonfire","setupOn","invisible_minecart"],Invulnerable:1b,CustomDisplayTile:1b,DisplayState:{Name:"minecraft:air"}}
execute if entity @s[tag=firekeeper] as @n[type=chest_minecart,tag=bonfire,tag=setupOn] run tag @s add firekeeper
execute as @n[type=chest_minecart,tag=bonfire,tag=setupOn] run function soulscraft:bonfire/bonfire_gui/setup_main_page
execute as @n[type=chest_minecart,tag=bonfire,tag=setupOn] run scoreboard players set @s bonfireGuiPage 0
execute as @n[type=chest_minecart,tag=bonfire,tag=setupOn] run function soulscraft:get_uuid
execute as @n[type=chest_minecart,tag=bonfire,tag=setupOn] run team join noCollision @s
execute as @n[type=chest_minecart,tag=bonfire,tag=setupOn] run tag @s remove setupOn
