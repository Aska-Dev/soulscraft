execute if items entity @s container.10 sugar[custom_data={soul_tier:1},count=4] run tag @s add sc.r.homeward_bone
execute if items entity @s container.11 sugar[custom_data={soul_tier:1},count=4] run tag @s add sc.r.homeward_bone
execute if items entity @s container.12 sugar[custom_data={soul_tier:1},count=4] run tag @s add sc.r.homeward_bone

execute unless entity @s[tag=sc.r.homeward_bone] run return fail
tag @s remove sc.r.homeward_bone

execute if items entity @s container.10 bone run tag @s add sc.r.homeward_bone
execute if items entity @s container.11 bone run tag @s add sc.r.homeward_bone
execute if items entity @s container.12 bone run tag @s add sc.r.homeward_bone

execute unless entity @s[tag=sc.r.homeward_bone] run return fail
tag @s remove sc.r.homeward_bone

function soulscraft:crafting/crafting_success
item replace entity @s container.16 with saddle[custom_model_data=191001,custom_data={homeward_bone:true,medium_charge:true,souls_item:true},food={nutrition:0,saturation:0,eat_seconds:2147483647,can_always_eat:true},item_name='{"color":"white","text":"Homeward Bone"}',lore=['{"color":"gray","italic":true,"text":"Bone fragment reduced to white ash."}','{"color":"gray","italic":true,"text":"Return to last bonfire used for resting."}']]
item replace entity @s container.10 with air
item replace entity @s container.11 with air
item replace entity @s container.12 with air