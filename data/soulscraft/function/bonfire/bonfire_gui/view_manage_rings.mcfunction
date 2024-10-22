tag @s remove soulscraftUsed

execute if predicate soulscraft:rings/slot1_is_ring run function soulscraft:bonfire/bonfire_addons/rings/add_ring_to_slot_1
execute unless predicate soulscraft:rings/slot1_is_ring run scoreboard players set @p sc.ring_slot.1 0

execute if predicate soulscraft:rings/slot2_is_ring run function soulscraft:bonfire/bonfire_addons/rings/add_ring_to_slot_2
execute unless predicate soulscraft:rings/slot2_is_ring run scoreboard players set @p sc.ring_slot.2 0

execute if predicate soulscraft:rings/slot3_is_ring run function soulscraft:bonfire/bonfire_addons/rings/add_ring_to_slot_3
execute unless predicate soulscraft:rings/slot3_is_ring run scoreboard players set @p sc.ring_slot.3 0

execute if predicate soulscraft:rings/slot4_is_ring run function soulscraft:bonfire/bonfire_addons/rings/add_ring_to_slot_4
execute unless predicate soulscraft:rings/slot4_is_ring run scoreboard players set @p sc.ring_slot.4 0

# item 0 on slot 0 || Go back
execute store result score @s soulscraftGui run data get entity @s Items[0].Slot
execute if entity @s[tag=!soulscraftUsed] unless score @s soulscraftGui matches 0 run clear @p sugar[custom_data={IsGuiItem:1}]
execute if entity @s[tag=!soulscraftUsed] unless score @s soulscraftGui matches 0 run function soulscraft:bonfire/bonfire_gui/setup_main_page
execute if entity @s[tag=!soulscraftUsed] unless score @s soulscraftGui matches 0 run scoreboard players set @s bonfireGuiPage 0
execute if entity @s[tag=!soulscraftUsed] unless score @s soulscraftGui matches 0 run tag @s add soulscraftUsed
scoreboard players reset @s soulscraftGui

#--- Check for filler item ---
execute unless predicate soulscraft:rings/slot4_is_ring store result score @s soulscraftGui run data get entity @s Items[25].Slot
execute unless predicate soulscraft:rings/slot4_is_ring if entity @s[tag=!soulscraftUsed] unless score @s soulscraftGui matches 26 run clear @p sugar[minecraft:custom_data={IsGuiItem:1}]
execute unless predicate soulscraft:rings/slot4_is_ring if entity @s[tag=!soulscraftUsed] unless score @s soulscraftGui matches 26 run clear @p black_stained_glass_pane[minecraft:custom_data={IsGuiItem:1}]
execute unless predicate soulscraft:rings/slot4_is_ring if entity @s[tag=!soulscraftUsed] unless score @s soulscraftGui matches 26 run clear @p white_stained_glass_pane[minecraft:custom_data={IsGuiItem:1}]
execute unless predicate soulscraft:rings/slot4_is_ring if entity @s[tag=!soulscraftUsed] unless score @s soulscraftGui matches 26 run tag @s add soulscraftUsed
execute unless predicate soulscraft:rings/slot4_is_ring run scoreboard players reset @s soulscraftGui

#--- Check for filler item ---
execute if predicate soulscraft:rings/slot4_is_ring store result score @s soulscraftGui run data get entity @s Items[26].Slot
execute if predicate soulscraft:rings/slot4_is_ring if entity @s[tag=!soulscraftUsed] unless score @s soulscraftGui matches 26 run clear @p sugar[minecraft:custom_data={IsGuiItem:1}]
execute if predicate soulscraft:rings/slot4_is_ring if entity @s[tag=!soulscraftUsed] unless score @s soulscraftGui matches 26 run clear @p black_stained_glass_pane[minecraft:custom_data={IsGuiItem:1}]
execute if predicate soulscraft:rings/slot4_is_ring if entity @s[tag=!soulscraftUsed] unless score @s soulscraftGui matches 26 run clear @p white_stained_glass_pane[minecraft:custom_data={IsGuiItem:1}]
execute if predicate soulscraft:rings/slot4_is_ring if entity @s[tag=!soulscraftUsed] unless score @s soulscraftGui matches 26 run tag @s add soulscraftUsed
execute if predicate soulscraft:rings/slot4_is_ring run scoreboard players reset @s soulscraftGui

execute as @s[tag=bonfire,scores={bonfireGuiPage=3}] at @s run function soulscraft:bonfire/bonfire_gui/setup_manage_rings_page