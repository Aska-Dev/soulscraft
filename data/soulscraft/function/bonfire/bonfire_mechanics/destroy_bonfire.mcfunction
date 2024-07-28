summon item ~ ~ ~ {Item:{id:"minecraft:iron_sword",count:1}}
execute if entity @s[tag=firekeeper] run summon item ~ ~ ~ {Item:{id:"minecraft:sugar",count:1,components:{"minecraft:item_name":'{"color":"gold","text":"Firekeeper Soul"}',"minecraft:lore":['{"color":"gray","italic":true,"text":"A star shaped... thing?"}','{"color":"gray","italic":true,"text":"It emits a pleasant warmth"}'],"minecraft:custom_model_data":191004,"minecraft:custom_data":{firekeeper_soul:1b}}}}
kill @n[tag=bonfireSword]
tp @s ~ -100 ~