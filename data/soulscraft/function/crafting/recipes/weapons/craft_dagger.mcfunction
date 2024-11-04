execute if items entity @s container.10 sugar[custom_data={soul_tier:"1"},count=4] run tag @s add sc.r.dagger
execute if items entity @s container.11 sugar[custom_data={soul_tier:"1"},count=4] run tag @s add sc.r.dagger
execute if items entity @s container.12 sugar[custom_data={soul_tier:"1"},count=4] run tag @s add sc.r.dagger

execute unless entity @s[tag=sc.r.dagger] run return fail
tag @s remove sc.r.dagger

execute if items entity @s container.10 stick run tag @s add sc.r.dagger
execute if items entity @s container.11 stick run tag @s add sc.r.dagger
execute if items entity @s container.12 stick run tag @s add sc.r.dagger

execute unless entity @s[tag=sc.r.dagger] run return fail
tag @s remove sc.r.dagger

execute if items entity @s container.10 iron_ingot run tag @s add sc.r.dagger
execute if items entity @s container.11 iron_ingot run tag @s add sc.r.dagger
execute if items entity @s container.12 iron_ingot run tag @s add sc.r.dagger

execute unless entity @s[tag=sc.r.dagger] run return fail
tag @s remove sc.r.dagger

function soulscraft:crafting/crafting_success
item replace entity @s container.16 with shears[max_damage=1000,item_name='"Dagger"',lore=['{"color":"gray","text":"With both slash and thrust attacks"}','{"color":"gray","text":"this dagger is useful in various situations."}','" "','{"color":"white","italic":false,"text":"Requirements"}','[{"color":"dark_red","italic":false,"text":"[STR] "},{"color":"white","italic":false,"text":"0"},{"color":"dark_green","italic":false,"text":" [DEX] "},{"color":"white","italic":false,"text":"2"},{"color":"gold","italic":false,"text":" [FAI] "},{"color":"white","italic":false,"text":"0"},{"color":"blue","italic":false,"text":" [INT] "},{"color":"white","italic":false,"text":"0"}]','" "','{"color":"#BF6804","italic":false,"text":"[Attack Damage] 4"}','{"color":"#BF6804","italic":false,"text":"[Attack Speed] 2"}','" "','{"color":"white","italic":false,"text":"[Special Move]"}','{"color":"gray","italic":false,"text":"Multi Attack"}','" "'],hide_additional_tooltip={},repair_cost=9999999,custom_model_data=191014,custom_data={sc.item.dagger:true, sc.multi_attack:true},attribute_modifiers={modifiers:[{id:"attack_damage",type:"generic.attack_damage",amount:4,operation:"add_value",slot:"mainhand"},{id:"attack_speed",type:"generic.attack_speed",amount:-2,operation:"add_value",slot:"mainhand"}],show_in_tooltip:false},food={nutrition:0,saturation:0,can_always_eat:true,eat_seconds:2147483647}]
item replace entity @s container.10 with air
item replace entity @s container.11 with air
item replace entity @s container.12 with air