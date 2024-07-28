#--- GUI Pages ---
execute at @a as @e[type=chest_minecart,distance=..50,tag=bonfire,scores={bonfireGuiPage=0}] at @s run function soulscraft:bonfire/bonfire_gui/view_main_page
execute at @a as @e[type=chest_minecart,distance=..50,tag=bonfire,scores={bonfireGuiPage=1}] at @s run function soulscraft:bonfire/bonfire_gui/view_levelup_page
execute at @a as @e[type=chest_minecart,distance=..50,tag=bonfire,scores={bonfireGuiPage=2}] at @s run function soulscraft:bonfire/bonfire_gui/view_linking_page
# Reset Page
execute as @e[type=chest_minecart,tag=bonfire,scores={bonfireGuiPage=1..}] at @s if entity @p[distance=4..] run scoreboard players set @s bonfireGuiPage 0


#Bonfire Crafting
execute as @e[type=item,nbt={Item:{id:"minecraft:campfire"}}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:iron_sword"}},limit=1,distance=0..1] run function soulscraft:bonfire/bonfire_mechanics/crafting_bonfire


#Bonfire Breaking
execute as @e[tag=bonfire] at @s unless block ~ ~ ~ campfire run function soulscraft:bonfire/bonfire_mechanics/destroy_bonfire
execute as @e[tag=bonfire] at @s if block ~ ~ ~ campfire[lit=false] run function soulscraft:bonfire/bonfire_mechanics/destroy_bonfire

#Using Items at the bonfire
execute at @a as @e[tag=bonfire,type=chest_minecart,distance=..50] at @s if entity @e[distance=..1,type=item,nbt={Item:{components:{"minecraft:custom_data":{humanity:1b}}}}] run function soulscraft:bonfire/bonfire_addons/restore_humanity
execute at @a at @e[tag=bonfire,type=chest_minecart,distance=..50] as @n[tag=bonfire] if entity @e[distance=..1,type=item,nbt={Item:{components:{"minecraft:custom_data":{firekeeper_soul:1b}}}}] run function soulscraft:bonfire/bonfire_addons/activate_firekeeper