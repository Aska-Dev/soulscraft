execute store result score @s sc.temp run data get entity @s Items[12].components.minecraft:custom_data."sc.ring.id"

execute if score @s sc.temp > @p sc.ring_slot.2 run scoreboard players add @p sc.ring_slot.2 1
execute if score @s sc.temp > @p sc.ring_slot.2 run function soulscraft:bonfire/bonfire_addons/rings/add_ring_to_slot_2