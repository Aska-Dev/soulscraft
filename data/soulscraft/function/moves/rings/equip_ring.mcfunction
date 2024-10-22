##Item usage

#Check if item is already equipped
execute if predicate soulscraft:is_equipped run function soulscraft:moves/rings/unequip_ring
execute if predicate soulscraft:is_equipped run return fail

execute if score @s sc.ring_slots matches 0 run tellraw @s {"color":"red","text":"You crave for power outside of your reach..."}
execute if score @s sc.ring_slots matches 0 run tellraw @s {"color":"gray","text":"You can not have more than four rings equipped at a time"}
execute if score @s sc.ring_slots matches 0 run return fail

scoreboard players remove @s sc.ring_slots 1
execute at @s run playsound item.armor.equip_wolf master @a ~ ~ ~

item modify entity @s weapon.mainhand soulscraft:glint_on
item modify entity @s weapon.mainhand soulscraft:equip_item_on

function soulscraft:moves/rings/apply_ring_tags

#Reset item use after usage
function soulscraft:moves/reset_item_uses
tag @s remove itemChargeDone
