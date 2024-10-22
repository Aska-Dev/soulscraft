execute if items entity @s container.10 saddle[custom_data={sc.item.silver_ring_socket:1b}] run tag @s add sc.r.silver_lightfoot_ring
execute if items entity @s container.11 saddle[custom_data={sc.item.silver_ring_socket:1b}] run tag @s add sc.r.silver_lightfoot_ring
execute if items entity @s container.12 saddle[custom_data={sc.item.silver_ring_socket:1b}] run tag @s add sc.r.silver_lightfoot_ring

execute unless entity @s[tag=sc.r.silver_lightfoot_ring] run return fail
tag @s remove sc.r.silver_lightfoot_ring

execute if items entity @s container.10 feather run tag @s add sc.r.silver_lightfoot_ring
execute if items entity @s container.11 feather run tag @s add sc.r.silver_lightfoot_ring
execute if items entity @s container.12 feather run tag @s add ssc.r.silver_lightfoot_ring

execute unless entity @s[tag=sc.r.silver_lightfoot_ring] run return fail
tag @s remove sc.r.silver_lightfoot_ring

execute if items entity @s container.10 rabbit_foot run tag @s add sc.r.silver_lightfoot_ring
execute if items entity @s container.11 rabbit_foot run tag @s add sc.r.silver_lightfoot_ring
execute if items entity @s container.12 rabbit_foot run tag @s add ssc.r.silver_lightfoot_ring

execute unless entity @s[tag=sc.r.silver_lightfoot_ring] run return fail
tag @s remove sc.r.silver_lightfoot_ring

function soulscraft:crafting/crafting_success
item replace entity @s container.16 with saddle[item_name='"Silver Lightfoot Ring"',lore=['{"color":"gray","text":"Light ring with a slender and simple design,"}','{"color":"gray","text":"makes the wearer feel swift and fast"}','" "','{"color":"white","italic":false,"text":"Requirements"}','[{"color":"dark_red","italic":false,"text":"[STR] "},{"color":"white","italic":false,"text":"0"},{"color":"dark_green","italic":false,"text":" [DEX] "},{"color":"white","italic":false,"text":"5"},{"color":"gold","italic":false,"text":" [FAI] "},{"color":"white","italic":false,"text":"0"},{"color":"blue","italic":false,"text":" [INT] "},{"color":"white","italic":false,"text":"0"}]','" "','{"color":"white","italic":false,"text":"[Special Effect]"}','{"color":"gray","italic":false,"text":"Speed I"}','" "'],hide_additional_tooltip={},custom_data={sc.eq.ring:true,sc.item.silver_lightfoot_ring:true}] 1
item replace entity @s container.10 with air
item replace entity @s container.11 with air
item replace entity @s container.12 with air