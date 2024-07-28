playsound minecraft:entity.elder_guardian.curse master @a ~ ~ ~
summon glow_item_frame ~ ~-1 ~ {Tags:["invade_sign"],Invisible:1b,Fixed:1b,Item:{id:"minecraft:sugar",count:1,components:{"minecraft:custom_model_data":191006}}}
scoreboard players set @n[type=glow_item_frame,tag=invade_sign,distance=..1] soulsAnimationTimer 150
tag @s remove invasionSpawned

