# Start Timer
execute if score @s soulsItemTimer matches -1 run scoreboard players set @s soulsItemTimer 12

# React on reaching 0 
execute if score @s soulsItemTimer matches 0 run function soulscraft:moves/weapon_moves/multi_attack/use_move
execute if score @s soulsItemTimer matches 0 run advancement revoke @s only soulscraft:use_multi_attack
execute if score @s soulsItemTimer matches 0 run scoreboard players set @s soulsItemTimer -1

# Count down timer 
execute if score @s soulsItemTimer matches 1.. run scoreboard players remove @s soulsItemTimer 1