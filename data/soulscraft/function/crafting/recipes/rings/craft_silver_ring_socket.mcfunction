execute if items entity @s container.10 iron_ingot[count=4] run tag @s add sc.r.silver_ring_socket
execute if items entity @s container.11 iron_ingot[count=4] run tag @s add sc.r.silver_ring_socket
execute if items entity @s container.12 iron_ingot[count=4] run tag @s add sc.r.silver_ring_socket

execute unless entity @s[tag=sc.r.silver_ring_socket] run return fail
tag @s remove sc.r.silver_ring_socket

execute if items entity @s container.10 iron_nugget run tag @s add sc.r.silver_ring_socket
execute if items entity @s container.11 iron_nugget run tag @s add sc.r.silver_ring_socket
execute if items entity @s container.12 iron_nugget run tag @s add sc.r.silver_ring_socket

execute unless entity @s[tag=sc.r.silver_ring_socket] run return fail
tag @s remove sc.r.silver_ring_socket

function soulscraft:crafting/crafting_success
item replace entity @s container.16 with saddle[custom_name='{"color":"white","italic":false,"text":"Silver Ring Socket"}',lore=['{"color":"gray","italic":true,"text":"A simple silver socket, the base for many powerful rings"}'],custom_data={sc.item.silver_ring_socket:true},custom_model_data=191012] 1
item replace entity @s container.10 with air
item replace entity @s container.11 with air
item replace entity @s container.12 with air