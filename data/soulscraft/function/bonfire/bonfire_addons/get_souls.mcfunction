give @s sugar[item_name='"Soul of a Lost Undead"',lore=['{"color":"dark_purple","italic":false,"text":"Tier 1"}','{"color":"gray","italic":true,"text":"Soul of a lost Undead who has long ago gone Hollow"}'],custom_model_data=191002,custom_data={soul_tier:1}] 1
scoreboard players remove @s souls 5
execute if score @s souls matches 5.. run function soulscraft:bonfire/bonfire_addons/get_souls