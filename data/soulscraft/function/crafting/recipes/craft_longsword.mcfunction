execute if items entity @s container.10 sugar[custom_data={soul_tier:"1"},count=4] run tag @s add sc.r.longsword
execute if items entity @s container.11 sugar[custom_data={soul_tier:"1"},count=4] run tag @s add sc.r.longsword
execute if items entity @s container.12 sugar[custom_data={soul_tier:"1"},count=4] run tag @s add sc.r.longsword

execute unless entity @s[tag=sc.r.longsword] run return fail
tag @s remove sc.r.longsword

execute if items entity @s container.10 iron_sword run tag @s add sc.r.longsword
execute if items entity @s container.11 iron_sword run tag @s add sc.r.longsword
execute if items entity @s container.12 iron_sword run tag @s add sc.r.longsword

execute unless entity @s[tag=sc.r.longsword] run return fail
tag @s remove sc.r.longsword

function soulscraft:crafting/crafting_success
item replace entity @s container.16 with iron_hoe[max_damage=1000,item_name='"Longsword"',lore=['{"color":"gray","text":"Widely-used standard straight sword,"}','{"color":"gray","text":"only matched in ubiquity by the shortsword"}','" "','{"color":"white","italic":false,"text":"Requirements"}','[{"color":"dark_red","italic":false,"text":"[STR] "},{"color":"white","italic":false,"text":"1"},{"color":"dark_green","italic":false,"text":" [DEX] "},{"color":"white","italic":false,"text":"1"},{"color":"gold","italic":false,"text":" [FAI] "},{"color":"white","italic":false,"text":"0"},{"color":"blue","italic":false,"text":" [INT] "},{"color":"white","italic":false,"text":"0"}]','" "','{"color":"#BF6804","italic":false,"text":"[Attack Damage] 6"}','{"color":"#BF6804","italic":false,"text":"[Attack Speed] 1.6"}','" "','{"color":"white","italic":false,"text":"[Special Move]"}','{"color":"gray","italic":false,"text":"Heavy Attack"}','" "'],hide_additional_tooltip={},repair_cost=9999999,custom_model_data=191010,custom_data={souls_item:true,fast_charge:true,sc.sm.heavy_attack:true,sc.item.longsword:true},attribute_modifiers={modifiers:[{id:"attack_damage",type:"generic.attack_damage",amount:6,operation:"add_value",slot:"mainhand"},{id:"attack_speed",type:"generic.attack_speed",amount:-2.4,operation:"add_value",slot:"mainhand"}],show_in_tooltip:false},food={nutrition:0,saturation:0,can_always_eat:true,eat_seconds:2147483647}]
item replace entity @s container.10 with air
item replace entity @s container.11 with air
item replace entity @s container.12 with air