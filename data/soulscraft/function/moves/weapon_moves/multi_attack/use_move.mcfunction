execute if score sc.debug sc.debug.active matches 1 run tell @a[tag=dev] Used move: Multi Attack

execute if entity @s[nbt={active_effects:[{id:"minecraft:mining_fatigue"}]}] run advancement revoke @s only soulscraft:use_multi_attack
execute if entity @s[nbt={active_effects:[{id:"minecraft:mining_fatigue"}]}] run return fail

execute at @s run playsound minecraft:entity.breeze.wind_burst
effect give @s hunger 1 8 true

tag @s add sc.use.multi_attack
execute at @s positioned ^ ^ ^2 anchored eyes at @e[distance=..3,tag=!sc.use.multi_attack,type=#minecraft:mobs,sort=nearest,limit=1] run particle sweep_attack ~ ~1 ~ 0.2 0.3 0.2 1 1 force
execute at @s positioned ^ ^ ^2 anchored eyes at @e[distance=..3,tag=!sc.use.multi_attack,type=#minecraft:mobs,sort=nearest,limit=1] run particle sweep_attack ~ ~1 ~ 0.2 0.3 0.2 1 1 force

# Deal Damage
execute if score @s soulDex matches ..5 at @s positioned ^ ^ ^2 anchored eyes as @e[distance=..3,tag=!sc.use.multi_attack,type=#minecraft:mobs,sort=nearest,limit=1] at @s run damage @s 2 generic by @p[tag=sc.use.multi_attack]
execute if score @s soulDex matches 6..10 at @s positioned ^ ^ ^2 anchored eyes as @e[distance=..3,tag=!sc.use.multi_attack,type=#minecraft:mobs,sort=nearest,limit=1] at @s run damage @s 4 generic by @p[tag=sc.use.multi_attack]
execute if score @s soulDex matches 11..15 at @s positioned ^ ^ ^2 anchored eyes as @e[distance=..3,tag=!sc.use.multi_attack,type=#minecraft:mobs,sort=nearest,limit=1] at @s run damage @s 5 generic by @p[tag=sc.use.multi_attack]
execute if score @s soulDex matches 16..20 at @s positioned ^ ^ ^2 anchored eyes as @e[distance=..3,tag=!sc.use.multi_attack,type=#minecraft:mobs,sort=nearest,limit=1] at @s run damage @s 6 generic by @p[tag=sc.use.multi_attack]
execute if score @s soulDex matches 21..30 at @s positioned ^ ^ ^2 anchored eyes as @e[distance=..3,tag=!sc.use.multi_attack,type=#minecraft:mobs,sort=nearest,limit=1] at @s run damage @s 8 generic by @p[tag=sc.use.multi_attack]
execute if score @s soulDex matches 31..40 at @s positioned ^ ^ ^2 anchored eyes as @e[distance=..3,tag=!sc.use.multi_attack,type=#minecraft:mobs,sort=nearest,limit=1] at @s run damage @s 10 generic by @p[tag=sc.use.multi_attack]
execute if score @s soulDex matches 41..50 at @s positioned ^ ^ ^2 anchored eyes as @e[distance=..3,tag=!sc.use.multi_attack,type=#minecraft:mobs,sort=nearest,limit=1] at @s run damage @s 12 generic by @p[tag=sc.use.multi_attack]

tag @s remove sc.use.multi_attack

advancement revoke @s only soulscraft:use_multi_attack