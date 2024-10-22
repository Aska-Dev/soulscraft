execute store result score @s sc.temp run data get entity @s Items[11].components.minecraft:custom_data."sc.ring.id"

execute if score @s sc.temp > @p sc.ring_slot.1 run scoreboard players add @p sc.ring_slot.1 1
execute if score @s sc.temp > @p sc.ring_slot.1 run function soulscraft:bonfire/bonfire_addons/rings/add_ring_to_slot_1