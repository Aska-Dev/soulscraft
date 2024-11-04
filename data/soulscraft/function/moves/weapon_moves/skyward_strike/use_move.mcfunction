execute if entity @s[nbt={active_effects:[{id:"minecraft:mining_fatigue"}]}] run tag @s remove sc.skyward_strike.prepared
execute if entity @s[nbt={active_effects:[{id:"minecraft:mining_fatigue"}]}] run scoreboard players set @s soulsItemTimer -1
execute if entity @s[nbt={active_effects:[{id:"minecraft:mining_fatigue"}]}] run return fail

execute unless entity @s[tag=sc.skyward_strike.prepared] run advancement revoke @s only soulscraft:combos/skyward_strike/use_skyward_strike
execute unless entity @s[tag=sc.skyward_strike.prepared] run return fail

tag @s remove sc.skyward_strike.prepared

playsound minecraft:entity.player.attack.sweep

effect give @s hunger 1 120 true
tag @s add sc.use.skyward_strike
execute at @s at @e[distance=..4,tag=!sc.use.heavy_attack,type=#minecraft:mobs] run particle sweep_attack ~ ~1 ~ 0 0 0 1 1 force

# Deal Damage
execute if score @s soulStr matches ..10 at @s positioned ^ ^ ^2 anchored eyes as @e[distance=..3,tag=!sc.use.skyward_strike,type=#minecraft:mobs,sort=nearest,limit=1] at @s run damage @s 4 generic by @p[tag=sc.use.skyward_strike]
execute if score @s soulStr matches ..10 at @s positioned ^ ^ ^2 anchored eyes as @e[distance=..3,tag=!sc.use.skyward_strike,type=#minecraft:mobs,sort=nearest,limit=1] at @s run tp @s ~ ~4 ~
execute if score @s soulStr matches ..20 at @s positioned ^ ^ ^2 anchored eyes as @e[distance=..3,tag=!sc.use.skyward_strike,type=#minecraft:mobs,sort=nearest,limit=2] at @s run damage @s 6 generic by @p[tag=sc.use.skyward_strike]
execute if score @s soulStr matches ..20 at @s positioned ^ ^ ^2 anchored eyes as @e[distance=..3,tag=!sc.use.skyward_strike,type=#minecraft:mobs,sort=nearest,limit=2] at @s run tp @s ~ ~4 ~
execute if score @s soulStr matches ..30 at @s positioned ^ ^ ^2 anchored eyes as @e[distance=..3,tag=!sc.use.skyward_strike,type=#minecraft:mobs,sort=nearest,limit=3] at @s run damage @s 8 generic by @p[tag=sc.use.skyward_strike]
execute if score @s soulStr matches ..30 at @s positioned ^ ^ ^2 anchored eyes as @e[distance=..3,tag=!sc.use.skyward_strike,type=#minecraft:mobs,sort=nearest,limit=3] at @s run tp @s ~ ~4 ~
execute if score @s soulStr matches ..40 at @s positioned ^ ^ ^2 anchored eyes as @e[distance=..3,tag=!sc.use.skyward_strike,type=#minecraft:mobs,sort=nearest,limit=4] at @s run damage @s 10 generic by @p[tag=sc.use.skyward_strike]
execute if score @s soulStr matches ..40 at @s positioned ^ ^ ^2 anchored eyes as @e[distance=..3,tag=!sc.use.skyward_strike,type=#minecraft:mobs,sort=nearest,limit=4] at @s run tp @s ~ ~4 ~
execute if score @s soulStr matches ..50 at @s positioned ^ ^ ^2 anchored eyes as @e[distance=..3,tag=!sc.use.skyward_strike,type=#minecraft:mobs,sort=nearest,limit=5] at @s run damage @s 12 generic by @p[tag=sc.use.skyward_strike]
execute if score @s soulStr matches ..50 at @s positioned ^ ^ ^2 anchored eyes as @e[distance=..3,tag=!sc.use.skyward_strike,type=#minecraft:mobs,sort=nearest,limit=5] at @s run tp @s ~ ~4 ~
tag @s remove sc.use.skyward_strike

#Reset item use after usage
advancement revoke @s only soulscraft:combos/skyward_strike/use_skyward_strike
function soulscraft:moves/weapon_moves/skyward_strike/reset_move_setup