setblock ~ ~ ~ campfire
summon shulker ~ ~ ~
execute at @e[type=shulker,sort=nearest,limit=1] run summon armor_stand ~-0.4 ~-0.1 ~0.1 {Tags:["bonfireSword"],Pose:{RightArm:[93f,86f,0f]},ShowArms:1b,Invisible:1b,Marker:1b,NoBasePlate:1b,HandItems:[{id:iron_sword,count:1b},{}]}
execute at @e[type=shulker,sort=nearest,limit=1] run function soulscraft:bonfire/bonfire_mechanics/creation_script_bonfire_cart
tp @e[type=shulker,sort=nearest,limit=1] ~ -1000 ~

title @p times 15 20 15
title @p title {"text":"BONFIRE LIT","color":"white", "bold":true} 
playsound minecraft:entity.evoker.prepare_summon master @p ~ ~ ~