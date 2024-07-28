execute if score @s soulsAnimationTimer matches 30.. run data merge entity @s {Invulnerable:1b,HandItems:[{},{id:"minecraft:potion",count:1,components:{"minecraft:potion_contents":{custom_color:16756047}}}],attributes:[{id:"minecraft:generic.follow_range",base:0}]}
execute if score @s soulsAnimationTimer matches 27..29 at @s run playsound entity.generic.drink master @a ~ ~ ~
execute if score @s soulsAnimationTimer matches 14..19 at @s run playsound entity.generic.drink master @a ~ ~ ~
execute if score @s soulsAnimationTimer matches 4..6 at @s run playsound entity.generic.drink master @a ~ ~ ~
execute if score @s soulsAnimationTimer matches 4..28 at @s run particle heart ~ ~1 ~ 0.5 0.5 0.5 0.2 1 force @a[distance=..50] 
execute if score @s soulsAnimationTimer matches 1..2 at @s run tag @s remove estusHealing
execute if score @s soulsAnimationTimer matches 1..2 at @s run tag @s add estusDone