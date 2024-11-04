execute if entity @s[nbt={active_effects:[{id:"minecraft:mining_fatigue"}]}] run tag @s remove itemChargeDone
execute if entity @s[nbt={active_effects:[{id:"minecraft:mining_fatigue"}]}] run return fail

playsound minecraft:entity.player.attack.sweep
particle sweep_attack ~ ~1 ~ 0.8 0 0.8 1 5 force

effect give @s hunger 1 100 true
tag @s add sc.use.heavy_attack
execute at @s at @e[distance=..4,tag=!sc.use.heavy_attack,type=#minecraft:mobs] run particle sweep_attack ~ ~1 ~ 0 0 0 1 1 force

# Deal Damage
execute if score @s soulStr matches ..10 at @s as @e[distance=..4,tag=!sc.use.heavy_attack,type=#minecraft:mobs] run damage @s 8 generic by @p[tag=sc.use.heavy_attack]
execute if score @s soulStr matches 11..20 at @s as @e[distance=..4,tag=!sc.use.heavy_attack,type=#minecraft:mobs] run damage @s 10 generic by @p[tag=sc.use.heavy_attack]
execute if score @s soulStr matches 21..30 at @s as @e[distance=..4,tag=!sc.use.heavy_attack,type=#minecraft:mobs] run damage @s 12 generic by @p[tag=sc.use.heavy_attack]
execute if score @s soulStr matches 31..40 at @s as @e[distance=..4,tag=!sc.use.heavy_attack,type=#minecraft:mobs] run damage @s 14 generic by @p[tag=sc.use.heavy_attack]
execute if score @s soulStr matches 41..50 at @s as @e[distance=..4,tag=!sc.use.heavy_attack,type=#minecraft:mobs] run damage @s 16 generic by @p[tag=sc.use.heavy_attack]

tag @s remove sc.use.heavy_attack

#Reset item use after usage
function soulscraft:moves/reset_item_uses
tag @s remove itemChargeDone 