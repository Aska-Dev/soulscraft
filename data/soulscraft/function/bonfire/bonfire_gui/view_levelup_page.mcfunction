tag @s remove soulscraftUsed

# item 0 on slot 0 || Go back
execute store result score @s soulscraftGui run data get entity @s Items[0].Slot
execute if entity @s[tag=!soulscraftUsed] unless score @s soulscraftGui matches 0 run clear @p sugar[custom_data={IsGuiItem:1}]
execute if entity @s[tag=!soulscraftUsed] unless score @s soulscraftGui matches 0 run function soulscraft:bonfire/bonfire_gui/setup_main_page
execute if entity @s[tag=!soulscraftUsed] unless score @s soulscraftGui matches 0 run scoreboard players set @s bonfireGuiPage 0
execute if entity @s[tag=!soulscraftUsed] unless score @s soulscraftGui matches 0 run tag @s add soulscraftUsed
scoreboard players reset @s soulscraftGui

#--- Check for filler item ---
execute store result score @s soulscraftGui run data get entity @s Items[3].Slot
execute if entity @s[tag=!soulscraftUsed] unless score @s soulscraftGui matches 3 run clear @p black_stained_glass_pane[minecraft:custom_data={IsGuiItem:1}]
execute if entity @s[tag=!soulscraftUsed] unless score @s soulscraftGui matches 3 run tag @s add soulscraftUsed
scoreboard players reset @s soulscraftGui

#--- Get Level up cost click ---
execute store result score @s soulscraftGui run data get entity @s Items[4].Slot
execute if entity @s[tag=!soulscraftUsed] unless score @s soulscraftGui matches 4 run clear @p sugar[custom_data={IsGuiItem:1}]
execute if entity @s[tag=!soulscraftUsed] unless score @s soulscraftGui matches 4 run tellraw @p [{"color":"gray","text":"Souls needed for Level-up: "},{"bold":true,"color":"white","score":{"name":"@p","objective":"soulsLevelupCosts"}}]
execute if entity @s[tag=!soulscraftUsed] unless score @s soulscraftGui matches 4 run tag @s add soulscraftUsed
scoreboard players reset @s soulscraftGui

#--- Check for filler item ---
execute store result score @s soulscraftGui run data get entity @s Items[9].Slot
execute if entity @s[tag=!soulscraftUsed] unless score @s soulscraftGui matches 9 run clear @p black_stained_glass_pane[minecraft:custom_data={IsGuiItem:1}]
execute if entity @s[tag=!soulscraftUsed] unless score @s soulscraftGui matches 9 run tag @s add soulscraftUsed
scoreboard players reset @s soulscraftGui

# item 1 on slot 10 || Strength
execute store result score @s soulscraftGui run data get entity @s Items[10].Slot
execute if entity @s[tag=!soulscraftUsed] unless score @s soulscraftGui matches 10 run clear @p sugar[custom_data={IsGuiItem:1}]
execute if entity @s[tag=!soulscraftUsed] unless score @s soulscraftGui matches 10 run say Strength
execute if entity @s[tag=!soulscraftUsed] unless score @s soulscraftGui matches 10 run tag @s add soulscraftUsed
scoreboard players reset @s soulscraftGui

#--- Check for filler item ---
execute store result score @s soulscraftGui run data get entity @s Items[11].Slot
execute if entity @s[tag=!soulscraftUsed] unless score @s soulscraftGui matches 11 run clear @p black_stained_glass_pane[minecraft:custom_data={IsGuiItem:1}]
execute if entity @s[tag=!soulscraftUsed] unless score @s soulscraftGui matches 11 run tag @s add soulscraftUsed
scoreboard players reset @s soulscraftGui

# item 2 on slot 12 || Dexterity
execute store result score @s soulscraftGui run data get entity @s Items[12].Slot
execute if entity @s[tag=!soulscraftUsed] unless score @s soulscraftGui matches 12 run clear @p sugar[custom_data={IsGuiItem:1}]
execute if entity @s[tag=!soulscraftUsed] unless score @s soulscraftGui matches 12 run say Dexterity
execute if entity @s[tag=!soulscraftUsed] unless score @s soulscraftGui matches 12 run tag @s add soulscraftUsed
scoreboard players reset @s soulscraftGui

#--- Check for filler item ---
execute store result score @s soulscraftGui run data get entity @s Items[13].Slot
execute if entity @s[tag=!soulscraftUsed] unless score @s soulscraftGui matches 13 run clear @p black_stained_glass_pane[minecraft:custom_data={IsGuiItem:1}]
execute if entity @s[tag=!soulscraftUsed] unless score @s soulscraftGui matches 13 run tag @s add soulscraftUsed
scoreboard players reset @s soulscraftGui

# item 3 on slot 14 || Faith
execute store result score @s soulscraftGui run data get entity @s Items[14].Slot
execute if entity @s[tag=!soulscraftUsed] unless score @s soulscraftGui matches 14 run clear @p sugar[custom_data={IsGuiItem:1}]
execute if entity @s[tag=!soulscraftUsed] unless score @s soulscraftGui matches 14 run say Faith
execute if entity @s[tag=!soulscraftUsed] unless score @s soulscraftGui matches 14 run tag @s add soulscraftUsed
scoreboard players reset @s soulscraftGui

#--- Check for filler item ---
execute store result score @s soulscraftGui run data get entity @s Items[15].Slot
execute if entity @s[tag=!soulscraftUsed] unless score @s soulscraftGui matches 15 run clear @p black_stained_glass_pane[minecraft:custom_data={IsGuiItem:1}]
execute if entity @s[tag=!soulscraftUsed] unless score @s soulscraftGui matches 15 run tag @s add soulscraftUsed
scoreboard players reset @s soulscraftGui

# item 4 on slot 16 || Intelligence
execute store result score @s soulscraftGui run data get entity @s Items[16].Slot
execute if entity @s[tag=!soulscraftUsed] unless score @s soulscraftGui matches 16 run clear @p sugar[custom_data={IsGuiItem:1}]
execute if entity @s[tag=!soulscraftUsed] unless score @s soulscraftGui matches 16 run say Intelligence
execute if entity @s[tag=!soulscraftUsed] unless score @s soulscraftGui matches 16 run tag @s add soulscraftUsed
scoreboard players reset @s soulscraftGui

#--- Check for filler item ---
execute store result score @s soulscraftGui run data get entity @s Items[26].Slot
execute if entity @s[tag=!soulscraftUsed] unless score @s soulscraftGui matches 26 run clear @p black_stained_glass_pane[minecraft:custom_data={IsGuiItem:1}]
execute if entity @s[tag=!soulscraftUsed] unless score @s soulscraftGui matches 26 run tag @s add soulscraftUsed
scoreboard players reset @s soulscraftGui

execute as @s[tag=bonfire,scores={bonfireGuiPage=1}] at @s run function soulscraft:bonfire/bonfire_gui/setup_levelup_page