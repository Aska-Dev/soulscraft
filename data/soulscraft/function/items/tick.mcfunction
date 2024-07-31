#execute as @a if items entity @s weapon.* *[custom_data={slow_charge:true}] if score @s soulsItemCharging matches 1.. run function soulscraft:items/charge_item_slow
execute as @a if predicate soulscraft:has_charge_speed_medium if score @s soulsItemCharging matches 1.. run function soulscraft:items/charge_item_medium
execute as @a if predicate soulscraft:has_charge_speed_fast if score @s soulsItemCharging matches 1.. run function soulscraft:items/charge_item_fast

execute as @a if score @s soulsItemUse matches 1.. if score @s soulsItemCharging matches 0.. run scoreboard players add @s soulsItemCharging 1
execute as @a if score @s soulsItemUse matches ..0 run function soulscraft:items/reset_item_uses
execute as @a if score @s soulsItemUse matches 1.. run scoreboard players set @s soulsItemUse 0

execute as @a if score @s soulsItemCharging matches ..-1 run scoreboard players add @s soulsItemCharging 1

#Detect Homeward Bone use
execute as @a at @s if items entity @s weapon.mainhand saddle[minecraft:custom_data={homeward_bone:true,medium_charge:true,souls_item:true}] if score @s soulsItemCharging matches 1.. run function soulscraft:items/homeward_bone/use_item_start
execute as @a[tag=itemChargeDone] at @s if items entity @s weapon.mainhand saddle[minecraft:custom_data={homeward_bone:true,medium_charge:true,souls_item:true}] run function soulscraft:items/homeward_bone/use_item

#Detec Skull lantern
execute as @a at @s if items entity @s weapon.* saddle[minecraft:custom_data={skull_lantern:true,fast_charge:true,souls_item:true}] if score @s soulsItemCharging matches 1.. run function soulscraft:items/skull_lantern/use_item_start
execute as @a[tag=itemChargeDone] at @s if items entity @s weapon.* saddle[minecraft:custom_data={skull_lantern:true,fast_charge:true,souls_item:true}] run function soulscraft:items/skull_lantern/use_item