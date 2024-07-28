title @p times 15 20 15
title @p title {"text":"HUMANITY RESTORED","color":"white", "bold":true} 
playsound minecraft:item.firecharge.use master @a
playsound minecraft:block.beacon.power_select master @a
scoreboard players add @p humanity 1
kill @e[sort=nearest,limit=1,nbt={Item:{components:{"minecraft:custom_data":{humanity:1b}}}}]