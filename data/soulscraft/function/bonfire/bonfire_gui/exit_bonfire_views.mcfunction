function soulscraft:bonfire/bonfire_mechanics/creation_script_bonfire_cart
tp @s ~ -100 ~

execute store result score @p lastUsedBonfire_UUID_0 run data get entity @n[type=chest_minecart,tag=bonfire,distance=..5] UUID[0]
execute store result score @p lastUsedBonfire_UUID_1 run data get entity @n[type=chest_minecart,tag=bonfire,distance=..5] UUID[1]
execute store result score @p lastUsedBonfire_UUID_2 run data get entity @n[type=chest_minecart,tag=bonfire,distance=..5] UUID[2]
execute store result score @p lastUsedBonfire_UUID_3 run data get entity @n[type=chest_minecart,tag=bonfire,distance=..5] UUID[3]