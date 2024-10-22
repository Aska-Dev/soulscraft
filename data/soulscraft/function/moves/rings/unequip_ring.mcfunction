execute at @s run playsound item.armor.unequip_wolf master @a ~ ~ ~
item modify entity @s weapon.mainhand soulscraft:glint_off
item modify entity @s weapon.mainhand soulscraft:equip_item_off

scoreboard players add @s sc.ring_slots 1

execute if items entity @s weapon.mainhand saddle[minecraft:custom_data={sc.item.silver_lightfoot_ring:true,sc.fast_charge:true,sc.eq.ring:true}] run tag @s remove sc.tag.silverLightfootRing_active