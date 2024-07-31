function soulscraft:bonfire/bonfire_addons/levelups/get_amount_souls_for_levelup

execute unless score @s soulsLevelupCosts <= @s soulsForLevelup run function soulscraft:bonfire/bonfire_addons/levelups/failed_levelup
execute unless score @s soulsLevelupCosts <= @s soulsForLevelup run return fail

execute store result score @s soulsForLevelup run scoreboard players get @s soulsLevelupCosts
function soulscraft:bonfire/bonfire_addons/levelups/clear_souls_for_levelup

function soulscraft:bonfire/bonfire_addons/levelups/raise_levelup_costs

scoreboard players add @s soulFaith 1
tellraw @s [{"color":"white","italic":false,"text":"Your faith grew stronger..."},{"color":"gold","text":" [Faith] "},{"color":"white","text":"increased to "},{"bold":true,"color":"yellow","score":{"name":"@s","objective":"soulFaith"}}]