tag @s remove soulscraftUsed

# item 0 on slot 0 || Go back
execute store result score @s soulscraftGui run data get entity @s Items[0].Slot
execute if entity @s[tag=!soulscraftUsed] unless score @s soulscraftGui matches 0 run clear @p sugar[custom_data={IsGuiItem:1}]
execute if entity @s[tag=!soulscraftUsed] unless score @s soulscraftGui matches 0 run function soulscraft:bonfire/bonfire_gui/setup_main_page
execute if entity @s[tag=!soulscraftUsed] unless score @s soulscraftGui matches 0 run scoreboard players set @s bonfireGuiPage 0
execute if entity @s[tag=!soulscraftUsed] unless score @s soulscraftGui matches 0 run tag @s add soulscraftUsed
scoreboard players reset @s soulscraftGui

#--- Check for filler item ---
execute store result score @s soulscraftGui run data get entity @s Items[22].Slot
execute if entity @s[tag=!soulscraftUsed] unless score @s soulscraftGui matches 26 run clear @p sugar[minecraft:custom_data={IsGuiItem:1}]
execute if entity @s[tag=!soulscraftUsed] unless score @s soulscraftGui matches 26 run clear @p black_stained_glass_pane[minecraft:custom_data={IsGuiItem:1}]
execute if entity @s[tag=!soulscraftUsed] unless score @s soulscraftGui matches 26 run tag @s add soulscraftUsed
scoreboard players reset @s soulscraftGui

##Add Recipes here
execute as @s[tag=bonfire,scores={bonfireGuiPage=2}] at @s run function soulscraft:bonfire/bonfire_addons/linking_recipes

execute as @s[tag=bonfire,scores={bonfireGuiPage=2}] at @s run function soulscraft:bonfire/bonfire_gui/setup_linking_page