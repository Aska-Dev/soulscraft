#Item usage
tag @s add returningPlayer
execute as @e[tag=bonfire] at @s if score @s entity_uuid_0 = @p[tag=returningPlayer] lastUsedBonfire_UUID_0 if score @s entity_uuid_1 = @p[tag=returningPlayer] lastUsedBonfire_UUID_1 if score @s entity_uuid_2 = @p[tag=returningPlayer] lastUsedBonfire_UUID_2 if score @s entity_uuid_3 = @p[tag=returningPlayer] lastUsedBonfire_UUID_3 run tp @p[tag=returningPlayer] ^1 ^ ^
execute at @s run playsound minecraft:block.bell.resonate master @a
tag @s remove returningPlayer

#Reset item use after usage
function soulscraft:moves/reset_item_uses
tag @s remove itemChargeDone

#Clear item if one-time-use
clear @s saddle[custom_data={homeward_bone:true,medium_charge:true,souls_item:true}] 1
