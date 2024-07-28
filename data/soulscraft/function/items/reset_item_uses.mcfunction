scoreboard players set @s soulsItemUse 0
execute if score @s soulsItemCharging matches 1.. run title @s actionbar ""
execute if score @s soulsItemCharging matches 0.. run scoreboard players set @s soulsItemCharging 0