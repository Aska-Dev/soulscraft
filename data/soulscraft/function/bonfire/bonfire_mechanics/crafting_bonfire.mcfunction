function soulscraft:bonfire/bonfire_mechanics/create_bonfire
kill @e[type=item,nbt={Item: {id:"minecraft:iron_sword"}},sort=nearest,limit=1]
playsound minecraft:block.beacon.power_select master @a[distance=..10]
particle minecraft:flame ~ ~0.5 ~ 0 0 0 0.1 20 force
kill @s
