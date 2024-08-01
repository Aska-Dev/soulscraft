execute if items entity @s weapon.mainhand sugar[custom_data={small_soul:true}] store result score @s soulsForLevelup run data get entity Aska2708 SelectedItem.count

clear @s sugar[custom_data={small_soul:true}] 1
give @s sugar[item_name='"Soul of a Lost Undead"',lore=['{"color":"dark_purple","italic":false,"text":"Tier 1"}','{"color":"gray","italic":true,"text":"Soul of a lost Undead who has long ago gone Hollow"}'],custom_model_data=191002,custom_data={soul_tier:"1"}] 1

scoreboard players remove @s soulsForLevelup 1

execute if score @s soulsForLevelup matches 1.. run function soulscraft:manager/repair_souls