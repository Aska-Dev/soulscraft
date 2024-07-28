execute if entity @s[scores={soulsAnimationTimer=80..81}] run title @a[distance=..20] actionbar {"text":"Dark spirit has invaded!"}
execute if entity @s[scores={soulsAnimationTimer=80..81}] run playsound minecraft:entity.wither.spawn master @a ~ ~ ~
execute if entity @s[scores={soulsAnimationTimer=70..80}] run particle flame ~ ~ ~ 0.2 0 0.2 0 5 force
execute if entity @s[scores={soulsAnimationTimer=60..70}] run particle flame ~ ~ ~ 0.2 0.2 0.2 0 5 force
execute if entity @s[scores={soulsAnimationTimer=50..60}] run particle flame ~ ~ ~ 0.2 0.4 0.2 0 5 force
execute if entity @s[scores={soulsAnimationTimer=40..50}] run particle flame ~ ~ ~ 0.2 0.6 0.2 0 5 force
execute if entity @s[scores={soulsAnimationTimer=30..40}] run particle flame ~ ~ ~ 0.2 0.8 0.2 0 5 force
execute if entity @s[scores={soulsAnimationTimer=15..16}] run title @a[distance=..20] actionbar {"text":"Dark spirit has invaded!"}
execute if entity @s[scores={soulsAnimationTimer=20..30}] run particle flame ~ ~ ~ 0.2 1 0.2 0 5 force
execute if entity @s[scores={soulsAnimationTimer=10..20}] run particle flame ~ ~ ~ 0.2 1 0.2 0 5 force
execute if entity @s[scores={soulsAnimationTimer=4..5}] run execute as @n[tag=invasion] at @s run tag @s add animationDone
execute if entity @s[scores={soulsAnimationTimer=4..5}] run playsound minecraft:entity.wither.ambient master @a ~ ~ ~
execute if entity @s[scores={soulsAnimationTimer=4..5}] run particle flame ~ ~ ~ 0.2 1.2 0.2 5 50 force
execute if entity @s[scores={soulsAnimationTimer=0..1}] run data merge entity @s {Item:{id:"air"}}
execute if entity @s[scores={soulsAnimationTimer=0..1}] run kill @s