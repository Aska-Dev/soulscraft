#--- GUI Pages ---
execute as @e[type=chest_minecart,tag=bonfire,scores={bonfireGuiPage=0}] at @s run function soulscraft:bonfire/bonfire_gui/view_main_page
execute as @e[type=chest_minecart,tag=bonfire,scores={bonfireGuiPage=1}] at @s run function soulscraft:bonfire/bonfire_gui/view_levelup_page
execute as @e[type=chest_minecart,tag=bonfire,scores={bonfireGuiPage=2}] at @s run function soulscraft:bonfire/bonfire_gui/view_linking_page
execute as @e[type=chest_minecart,tag=bonfire,scores={bonfireGuiPage=3}] at @s run function soulscraft:bonfire/bonfire_gui/view_manage_rings
# Reset Bonfire user and page
execute as @a[tag=sc.bonfire_user] at @s at @e[type=chest_minecart,tag=bonfire,sort=nearest,limit=1] as @p[tag=sc.bonfire_user,distance=5..] run function soulscraft:bonfire/bonfire_mechanics/reset_bonfire_user

#Bonfire Crafting
execute at @a as @e[type=item,nbt={Item:{id:"minecraft:campfire"}},distance=..5] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:iron_sword"}},limit=1,distance=0..0.2] run function soulscraft:bonfire/bonfire_mechanics/crafting_bonfire


#Bonfire Breaking
execute as @e[tag=bonfire,distance=..50] at @s unless block ~ ~ ~ campfire run function soulscraft:bonfire/bonfire_mechanics/destroy_bonfire
execute as @e[tag=bonfire,distance=..50] at @s if block ~ ~ ~ campfire[lit=false] run function soulscraft:bonfire/bonfire_mechanics/destroy_bonfire

#Using Items at the bonfire
execute at @a as @e[tag=bonfire,type=chest_minecart,distance=..50] at @s if entity @e[distance=..1,type=item,nbt={Item:{components:{"minecraft:custom_data":{humanity:1b}}}}] run function soulscraft:bonfire/bonfire_addons/restore_humanity
execute at @a at @e[tag=bonfire,type=chest_minecart,distance=..50] as @n[tag=bonfire] if entity @e[distance=..1,type=item,nbt={Item:{components:{"minecraft:custom_data":{firekeeper_soul:1b}}}}] run function soulscraft:bonfire/bonfire_addons/activate_firekeeper