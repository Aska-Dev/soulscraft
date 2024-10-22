execute if items entity @s container.10 saddle[custom_data={sc.item.silver_ring_socket:1b}] run tag @s add sc.r.silver_lightfoot_ring
execute if items entity @s container.11 saddle[custom_data={sc.item.silver_ring_socket:1b}] run tag @s add sc.r.silver_lightfoot_ring
execute if items entity @s container.12 saddle[custom_data={sc.item.silver_ring_socket:1b}] run tag @s add sc.r.silver_lightfoot_ring

execute unless entity @s[tag=sc.r.silver_lightfoot_ring] run return fail
tag @s remove sc.r.silver_lightfoot_ring

execute if items entity @s container.10 nether_wart run tag @s add sc.r.silver_lightfoot_ring
execute if items entity @s container.11 nether_wart run tag @s add sc.r.silver_lightfoot_ring
execute if items entity @s container.12 nether_wart run tag @s add sc.r.silver_lightfoot_ring

execute unless entity @s[tag=sc.r.silver_lightfoot_ring] run return fail
tag @s remove sc.r.silver_lightfoot_ring

execute if items entity @s container.10 brick run tag @s add sc.r.silver_lightfoot_ring
execute if items entity @s container.11 brick run tag @s add sc.r.silver_lightfoot_ring
execute if items entity @s container.12 brick run tag @s add sc.r.silver_lightfoot_ring

execute unless entity @s[tag=sc.r.silver_lightfoot_ring] run return fail
tag @s remove sc.r.silver_lightfoot_ring

function soulscraft:crafting/crafting_success
item replace entity @s container.16 with saddle[item_name='"Silver Bearclaw Ring"',lore=['{"color":"gray","text":"A surprisingly heavy and bulky ring,"}','{"color":"gray","text":"you feel how your muscles grow, when wearing it"}','" "','{"color":"white","italic":false,"text":"Requirements"}','[{"color":"dark_red","italic":false,"text":"[STR] "},{"color":"white","italic":false,"text":"5"},{"color":"dark_green","italic":false,"text":" [DEX] "},{"color":"white","italic":false,"text":"0"},{"color":"gold","italic":false,"text":" [FAI] "},{"color":"white","italic":false,"text":"0"},{"color":"blue","italic":false,"text":" [INT] "},{"color":"white","italic":false,"text":"0"}]','" "','{"color":"white","italic":false,"text":"[Special Effect]"}','{"color":"gray","italic":false,"text":"Strength I"}','" "'],hide_additional_tooltip={},custom_data={sc.eq.ring:true,sc.item.silver_bearclaw_ring:true,sc.ring.id:2},custom_model_data=191014] 1
item replace entity @s container.10 with air
item replace entity @s container.11 with air
item replace entity @s container.12 with air