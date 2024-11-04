execute if items entity @s container.10 sugar[custom_data={soul_tier:"1"},count=6] run tag @s add sc.r.bastardsword
execute if items entity @s container.11 sugar[custom_data={soul_tier:"1"},count=6] run tag @s add sc.r.bastardsword
execute if items entity @s container.12 sugar[custom_data={soul_tier:"1"},count=6] run tag @s add sc.r.bastardsword

execute unless entity @s[tag=sc.r.bastardsword] run return fail
tag @s remove sc.r.bastardsword

execute if items entity @s container.10 iron_ingot[count=2] run tag @s add sc.r.bastardsword
execute if items entity @s container.11 iron_ingot[count=2] run tag @s add sc.r.bastardsword
execute if items entity @s container.12 iron_ingot[count=2] run tag @s add sc.r.bastardsword

execute unless entity @s[tag=sc.r.bastardsword] run return fail
tag @s remove sc.r.bastardsword

execute if items entity @s container.10 iron_sword run tag @s add sc.r.bastardsword
execute if items entity @s container.11 iron_sword run tag @s add sc.r.bastardsword
execute if items entity @s container.12 iron_sword run tag @s add sc.r.bastardsword

execute unless entity @s[tag=sc.r.bastardsword] run return fail
tag @s remove sc.r.bastardsword

function soulscraft:crafting/crafting_success
item replace entity @s container.16 with stone_sword[max_damage=1000,item_name='"Bastard Sword"',lore=['{"color":"gray","text":"This standard greatsword is normally wielded"}','{"color":"gray","text":"with two hands due to its great weight."}','" "','{"color":"white","italic":false,"text":"Requirements"}','[{"color":"dark_red","italic":false,"text":"[STR] "},{"color":"white","italic":false,"text":"2"},{"color":"dark_green","italic":false,"text":" [DEX] "},{"color":"white","italic":false,"text":"0"},{"color":"gold","italic":false,"text":" [FAI] "},{"color":"white","italic":false,"text":"0"},{"color":"blue","italic":false,"text":" [INT] "},{"color":"white","italic":false,"text":"0"}]','" "','{"color":"#BF6804","italic":false,"text":"[Attack Damage] 8"}','{"color":"#BF6804","italic":false,"text":"[Attack Speed] 1"}','" "','{"color":"white","italic":false,"text":"[Special Move]"}','{"color":"gray","italic":false,"text":"Skyward Strike"}','" "'],hide_additional_tooltip={},repair_cost=9999999,custom_model_data=191015,custom_data={sc.item.bastardsword:true,sc.skyward_strike:true},attribute_modifiers={modifiers:[{id:"attack_damage",type:"generic.attack_damage",amount:8,operation:"add_value",slot:"mainhand"},{id:"attack_speed",type:"generic.attack_speed",amount:-3,operation:"add_value",slot:"mainhand"}],show_in_tooltip:false},food={nutrition:0,saturation:0,can_always_eat:true,eat_seconds:2147483647}] 1
item replace entity @s container.10 with air
item replace entity @s container.11 with air
item replace entity @s container.12 with air