#Item usage
playsound item.firecharge.use master @a

particle flame ~ ~ ~ 3 0.2 3 0.1 500

tag @s add sc.i.skull_lantern
execute as @e[distance=..5,type=#minecraft:mobs] at @s run data merge entity @s {Fire:100}
execute as @e[distance=..5,tag=!sc.i.skull_lantern,type=player] run summon small_fireball ~ ~1 ~ {acceleration_power:2d,Motion:[0.0,-2.0,0.0]}
tag @s remove sc.i.skull_lantern

#Reset item use after usage
function soulscraft:moves/reset_item_uses
tag @s remove itemChargeDone

#Clear item if one-time-use
#-