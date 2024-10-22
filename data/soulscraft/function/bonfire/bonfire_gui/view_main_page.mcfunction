tag @s remove soulscraftUsed

#--- Check for filler item ---
execute store result score @s soulscraftGui run data get entity @s Items[2].Slot
execute if entity @s[tag=!soulscraftUsed] unless score @s soulscraftGui matches 2 run clear @p black_stained_glass_pane[minecraft:custom_data={IsGuiItem:1}]
execute if entity @s[tag=!soulscraftUsed] unless score @s soulscraftGui matches 2 run tag @s add soulscraftUsed
scoreboard players reset @s soulscraftGui

# item on slot 3 || Manage Rings
execute store result score @s soulscraftGui run data get entity @s Items[3].Slot
execute if entity @s[tag=!soulscraftUsed] unless score @s soulscraftGui matches 3 run clear @p sugar[custom_data={IsGuiItem:1}]
execute if entity @s[tag=!soulscraftUsed] unless score @s soulscraftGui matches 3 run function soulscraft:bonfire/bonfire_gui/setup_manage_rings_page
execute if entity @s[tag=!soulscraftUsed] unless score @s soulscraftGui matches 3 run scoreboard players set @s bonfireGuiPage 3
execute if entity @s[tag=!soulscraftUsed] unless score @s soulscraftGui matches 3 run tag @s add soulscraftUsed
scoreboard players reset @s soulscraftGui

#--- Check for filler item ---
execute store result score @s soulscraftGui run data get entity @s Items[4].Slot
execute if entity @s[tag=!soulscraftUsed] unless score @s soulscraftGui matches 4 run clear @p black_stained_glass_pane[minecraft:custom_data={IsGuiItem:1}]
execute if entity @s[tag=!soulscraftUsed] unless score @s soulscraftGui matches 4 run tag @s add soulscraftUsed
scoreboard players reset @s soulscraftGui


#--- Check for filler item ---
execute store result score @s soulscraftGui run data get entity @s Items[10].Slot
execute if entity @s[tag=!soulscraftUsed] unless score @s soulscraftGui matches 10 run clear @p black_stained_glass_pane[minecraft:custom_data={IsGuiItem:1}]
execute if entity @s[tag=!soulscraftUsed] unless score @s soulscraftGui matches 10 run tag @s add soulscraftUsed
scoreboard players reset @s soulscraftGui

# item 0 on slot 11 || Rest
execute store result score @s soulscraftGui run data get entity @s Items[11].Slot
execute if entity @s[tag=!soulscraftUsed] unless score @s soulscraftGui matches 11 run clear @p sugar[custom_data={IsGuiItem:1}]
execute if entity @s[tag=!soulscraftUsed] unless score @s soulscraftGui matches 11 run execute as @p at @s run function soulscraft:bonfire/bonfire_mechanics/use_bonfire
execute if entity @s[tag=!soulscraftUsed] unless score @s soulscraftGui matches 11 run tag @s add soulscraftUsed
scoreboard players reset @s soulscraftGui

#--- Check for filler item ---
execute store result score @s soulscraftGui run data get entity @s Items[12].Slot
execute if entity @s[tag=!soulscraftUsed] unless score @s soulscraftGui matches 12 run clear @p black_stained_glass_pane[minecraft:custom_data={IsGuiItem:1}]
execute if entity @s[tag=!soulscraftUsed] unless score @s soulscraftGui matches 12 run tag @s add soulscraftUsed
scoreboard players reset @s soulscraftGui

# item 1 on slot 13 || Level up
execute store result score @s soulscraftGui run data get entity @s Items[13].Slot
execute if entity @s[tag=!soulscraftUsed,tag=!firekeeper] unless score @s soulscraftGui matches 13 run clear @p sugar[custom_data={IsGuiItem:1}]
execute if entity @s[tag=!soulscraftUsed,tag=!firekeeper] unless score @s soulscraftGui matches 13 run execute as @p run tellraw @s {"text":"Still this power lies beyond your reach..."}
execute if entity @s[tag=!soulscraftUsed,tag=!firekeeper] unless score @s soulscraftGui matches 13 run tag @s add soulscraftUsed
scoreboard players reset @s soulscraftGui

execute store result score @s soulscraftGui run data get entity @s Items[13].Slot
execute if entity @s[tag=!soulscraftUsed,tag=firekeeper] unless score @s soulscraftGui matches 13 run clear @p sugar[custom_data={IsGuiItem:1}]
execute if entity @s[tag=!soulscraftUsed,tag=firekeeper] unless score @s soulscraftGui matches 13 run function soulscraft:bonfire/bonfire_gui/setup_levelup_page
execute if entity @s[tag=!soulscraftUsed,tag=firekeeper] unless score @s soulscraftGui matches 13 run scoreboard players set @s bonfireGuiPage 1
execute if entity @s[tag=!soulscraftUsed,tag=firekeeper] unless score @s soulscraftGui matches 13 run tag @s add soulscraftUsed
scoreboard players reset @s soulscraftGui

#--- Check for filler item ---
execute store result score @s soulscraftGui run data get entity @s Items[14].Slot
execute if entity @s[tag=!soulscraftUsed] unless score @s soulscraftGui matches 14 run clear @p black_stained_glass_pane[minecraft:custom_data={IsGuiItem:1}]
execute if entity @s[tag=!soulscraftUsed] unless score @s soulscraftGui matches 14 run tag @s add soulscraftUsed
scoreboard players reset @s soulscraftGui

# item 2 on slot 15 || Rest
execute store result score @s soulscraftGui run data get entity @s Items[15].Slot
execute if entity @s[tag=!soulscraftUsed] unless score @s soulscraftGui matches 15 run clear @p sugar[custom_data={IsGuiItem:1}]
execute if entity @s[tag=!soulscraftUsed] unless score @s soulscraftGui matches 15 run function soulscraft:bonfire/bonfire_gui/setup_linking_page
execute if entity @s[tag=!soulscraftUsed] unless score @s soulscraftGui matches 15 run scoreboard players set @s bonfireGuiPage 2
execute if entity @s[tag=!soulscraftUsed] unless score @s soulscraftGui matches 15 run tag @s add soulscraftUsed
scoreboard players reset @s soulscraftGui

#--- Check for filler item ---
execute store result score @s soulscraftGui run data get entity @s Items[26].Slot
execute if entity @s[tag=!soulscraftUsed] unless score @s soulscraftGui matches 26 run clear @p black_stained_glass_pane[minecraft:custom_data={IsGuiItem:1}]
execute if entity @s[tag=!soulscraftUsed] unless score @s soulscraftGui matches 26 run tag @s add soulscraftUsed
scoreboard players reset @s soulscraftGui


execute as @s[tag=bonfire,scores={bonfireGuiPage=0}] at @s run function soulscraft:bonfire/bonfire_gui/setup_main_page