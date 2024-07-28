execute if score @s soulsItemCharging matches 1 run playsound block.fire.extinguish master @a
execute if score @s soulsItemCharging matches 10 run playsound block.fire.extinguish master @a
execute if score @s soulsItemCharging matches 20 run playsound block.fire.extinguish master @a
execute if score @s soulsItemCharging matches 30 run playsound block.fire.extinguish master @a
execute if score @s soulsItemCharging matches 40 run playsound minecraft:block.bell.resonate master @a
execute if score @s soulsItemCharging matches 40 run effect give @s blindness 3 0 true

effect give @s nausea 6 255 true
effect give @s slowness 1 255 true
particle minecraft:campfire_cosy_smoke ~ ~ ~ 0.2 0.8 0.2 0 2 force
