playsound minecraft:entity.player.attack.sweep
effect give @s hunger 1 100 true
tag @s add sc.use.heavy_attack
execute at @a positioned ^ ^ ^2 anchored eyes at @e[distance=..2,tag=!sc.use.heavy_attack,type=#minecraft:mobs] run particle sweep_attack ~ ~ ~ 0 0 0 1 1 force
execute at @a positioned ^ ^ ^2 anchored eyes as @e[distance=..2,tag=!sc.use.heavy_attack,type=#minecraft:mobs] run damage @s 14 generic by @p[tag=sc.use.heavy_attack]

tag @s remove sc.use.heavy_attack

#Reset item use after usage
function soulscraft:moves/reset_item_uses
tag @s remove itemChargeDone