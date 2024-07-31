execute if score @s soulsLevelupTier matches 1 run clear @s sugar[custom_data={soul_tier:"1"}] 1
execute if score @s soulsLevelupTier matches 2 run clear @s sugar[custom_data={soul_tier:"2"}] 1

scoreboard players remove @s soulsForLevelup 1

execute if score @s soulsForLevelup matches 1.. run function soulscraft:bonfire/bonfire_addons/levelups/clear_souls_for_levelup
