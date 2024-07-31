function soulscraft:bonfire/tick
function soulscraft:invasions/tick
function soulscraft:souls/tick
function soulscraft:items/tick
function soulscraft:mobs/tick

#--- Display not-visible chest-minecarts ---
execute at @a as @e[type=#minecarts,tag=!invisible_minecart,distance=..100] run function soulscraft:invisible_minecarts