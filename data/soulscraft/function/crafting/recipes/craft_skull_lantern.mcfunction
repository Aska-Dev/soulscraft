execute if items entity @s container.10 sugar[custom_data={soul_tier:"1"},count=1] run tag @s add sc.r.skull_lantern
execute if items entity @s container.11 sugar[custom_data={soul_tier:"1"},count=1] run tag @s add sc.r.skull_lantern
execute if items entity @s container.12 sugar[custom_data={soul_tier:"1"},count=1] run tag @s add sc.r.skull_lantern

execute unless entity @s[tag=sc.r.skull_lantern] run return fail
tag @s remove sc.r.skull_lantern

execute if items entity @s container.10 lantern run tag @s add sc.r.skull_lantern
execute if items entity @s container.11 lantern run tag @s add sc.r.skull_lantern
execute if items entity @s container.12 lantern run tag @s add sc.r.skull_lantern

execute unless entity @s[tag=sc.r.skull_lantern] run return fail
tag @s remove sc.r.skull_lantern

execute if items entity @s container.10 bone[count=4] run tag @s add sc.r.skull_lantern
execute if items entity @s container.11 bone[count=4] run tag @s add sc.r.skull_lantern
execute if items entity @s container.12 bone[count=4] run tag @s add sc.r.skull_lantern

execute unless entity @s[tag=sc.r.skull_lantern] run return fail
tag @s remove sc.r.skull_lantern

item replace entity @s container.16 with saddle[custom_model_data=191007,custom_data={skull_lantern:true,sc.fast_charge:true},food={nutrition:0,saturation:0,eat_seconds:2147483647,can_always_eat:true},item_name='{"color":"red","text":"Skull Lantern"}',lore=['{"color":"gray","italic":true,"text":"Skull Lantern of the Catacombs necromancer."}','{"color":"gray","italic":true,"text":"This lantern alights the Tomb of the Giants,"}','{"color":"gray","italic":true,"text":"Nito\'s light-devouring domain of death."}']]
item replace entity @s container.10 with air
item replace entity @s container.11 with air
item replace entity @s container.12 with air
function soulscraft:crafting/crafting_success