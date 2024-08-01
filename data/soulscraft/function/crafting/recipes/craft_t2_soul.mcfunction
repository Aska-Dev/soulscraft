execute if items entity @s container.10 sugar[custom_data={soul_tier:"1"},count=32] run tag @s add sc.r.t2_soul
execute if items entity @s container.11 sugar[custom_data={soul_tier:"1"},count=32] run tag @s add sc.r.t2_soul
execute if items entity @s container.12 sugar[custom_data={soul_tier:"1"},count=32] run tag @s add sc.r.t2_soul

execute unless entity @s[tag=sc.r.t2_soul] run return fail
tag @s remove sc.r.t2_soul

function soulscraft:crafting/crafting_success
item replace entity @s container.16 with sugar[item_name='"Soul of a Nameless Soldier"',lore=['{"italic":false,"text":"Tier 2"}','{"color":"gray","text":"Soul of a nameless Undead soldier who has long ago gone Hollow"}'],custom_model_data=191011,custom_data={soul_tier:"2"}] 1
item replace entity @s container.10 with air
item replace entity @s container.11 with air
item replace entity @s container.12 with air