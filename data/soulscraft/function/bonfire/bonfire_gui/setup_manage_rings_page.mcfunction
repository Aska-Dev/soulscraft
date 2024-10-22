execute unless score @s bonfireGuiPage matches 3 run data merge entity @s {Items:[{}]}

item replace entity @s container.0 with black_stained_glass_pane[hide_tooltip={},hide_additional_tooltip={},custom_data={IsGuiItem:1}]
item replace entity @s container.1 with black_stained_glass_pane[hide_tooltip={},hide_additional_tooltip={},custom_data={IsGuiItem:1}]
item replace entity @s container.2 with black_stained_glass_pane[hide_tooltip={},hide_additional_tooltip={},custom_data={IsGuiItem:1}]
item replace entity @s container.3 with black_stained_glass_pane[hide_tooltip={},hide_additional_tooltip={},custom_data={IsGuiItem:1}]
item replace entity @s container.4 with black_stained_glass_pane[hide_tooltip={},hide_additional_tooltip={},custom_data={IsGuiItem:1}]
item replace entity @s container.5 with black_stained_glass_pane[hide_tooltip={},hide_additional_tooltip={},custom_data={IsGuiItem:1}]
item replace entity @s container.6 with black_stained_glass_pane[hide_tooltip={},hide_additional_tooltip={},custom_data={IsGuiItem:1}]
item replace entity @s container.7 with black_stained_glass_pane[hide_tooltip={},hide_additional_tooltip={},custom_data={IsGuiItem:1}]
item replace entity @s container.8 with black_stained_glass_pane[hide_tooltip={},hide_additional_tooltip={},custom_data={IsGuiItem:1}]
item replace entity @s container.9 with black_stained_glass_pane[hide_tooltip={},hide_additional_tooltip={},custom_data={IsGuiItem:1}]
item replace entity @s container.10 with black_stained_glass_pane[hide_tooltip={},hide_additional_tooltip={},custom_data={IsGuiItem:1}]

item replace entity @s container.13 with black_stained_glass_pane[hide_tooltip={},hide_additional_tooltip={},custom_data={IsGuiItem:1}]

item replace entity @s container.16 with black_stained_glass_pane[hide_tooltip={},hide_additional_tooltip={},custom_data={IsGuiItem:1}]
item replace entity @s container.17 with black_stained_glass_pane[hide_tooltip={},hide_additional_tooltip={},custom_data={IsGuiItem:1}]
item replace entity @s container.18 with black_stained_glass_pane[hide_tooltip={},hide_additional_tooltip={},custom_data={IsGuiItem:1}]
item replace entity @s container.19 with black_stained_glass_pane[hide_tooltip={},hide_additional_tooltip={},custom_data={IsGuiItem:1}]
item replace entity @s container.20 with black_stained_glass_pane[hide_tooltip={},hide_additional_tooltip={},custom_data={IsGuiItem:1}]
item replace entity @s container.21 with black_stained_glass_pane[hide_tooltip={},hide_additional_tooltip={},custom_data={IsGuiItem:1}]
item replace entity @s container.22 with black_stained_glass_pane[hide_tooltip={},hide_additional_tooltip={},custom_data={IsGuiItem:1}]
item replace entity @s container.23 with black_stained_glass_pane[hide_tooltip={},hide_additional_tooltip={},custom_data={IsGuiItem:1}]
item replace entity @s container.24 with black_stained_glass_pane[hide_tooltip={},hide_additional_tooltip={},custom_data={IsGuiItem:1}]
item replace entity @s container.25 with black_stained_glass_pane[hide_tooltip={},hide_additional_tooltip={},custom_data={IsGuiItem:1}]
item replace entity @s container.26 with black_stained_glass_pane[hide_tooltip={},hide_additional_tooltip={},custom_data={IsGuiItem:1}]

item replace entity @s container.12 with air
item replace entity @s container.14 with air
item replace entity @s container.15 with air
execute unless score @p sc.ring_slot.1 matches 1.. run item replace entity @s container.12 with white_stained_glass_pane[hide_tooltip={},hide_additional_tooltip={},custom_data={IsGuiItem:1}]
execute unless score @p sc.ring_slot.2 matches 1.. run item replace entity @s container.14 with white_stained_glass_pane[hide_tooltip={},hide_additional_tooltip={},custom_data={IsGuiItem:1}]
execute unless score @p sc.ring_slot.3 matches 1.. run item replace entity @s container.15 with white_stained_glass_pane[hide_tooltip={},hide_additional_tooltip={},custom_data={IsGuiItem:1}]

# Order rings if there is a missing slot
execute if score @p sc.ring_slot.4 matches 1.. if score @p sc.ring_slot.3 matches 0 run function soulscraft:bonfire/bonfire_addons/rings/push_4_to_3
execute if score @p sc.ring_slot.3 matches 1.. if score @p sc.ring_slot.2 matches 0 run function soulscraft:bonfire/bonfire_addons/rings/push_3_to_2
execute if score @p sc.ring_slot.2 matches 1.. if score @p sc.ring_slot.1 matches 0 run function soulscraft:bonfire/bonfire_addons/rings/push_2_to_1

# Place rings in the right slots
execute if score @p sc.ring_slot.1 matches 1.. run function soulscraft:bonfire/bonfire_addons/rings/setup_ring_slots
execute if score @p sc.ring_slot.2 matches 1.. run function soulscraft:bonfire/bonfire_addons/rings/setup_ring_slots
execute if score @p sc.ring_slot.3 matches 1.. run function soulscraft:bonfire/bonfire_addons/rings/setup_ring_slots
execute if score @p sc.ring_slot.4 matches 1.. run function soulscraft:bonfire/bonfire_addons/rings/setup_ring_slots

item replace entity @s container.0 with sugar[item_name='{"bold":true,"color":"white","text":"Go back"}',custom_data={IsGuiItem:1},custom_model_data=192006,hide_additional_tooltip={}]