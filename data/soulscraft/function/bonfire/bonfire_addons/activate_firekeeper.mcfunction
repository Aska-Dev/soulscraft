data modify entity @n[type=minecraft:armor_stand,tag=bonfireSword] HandItems set value [{id:"minecraft:netherite_sword"},{}]

tag @s add firekeeper

particle flame ~ ~ ~ 0 0 0 0.5 200 force
playsound minecraft:item.firecharge.use master @a
playsound minecraft:entity.blaze.death master @a

title @p times 15 20 15
title @p title {"text":"FLAME KINDLED","color":"white", "bold":true} 

kill @n[type=item,nbt={Item:{components:{"minecraft:custom_data":{firekeeper_soul:1b}}}}]