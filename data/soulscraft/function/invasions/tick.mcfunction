scoreboard players remove @e[scores={soulsAnimationTimer=1..}] soulsAnimationTimer 1

execute at @a as @e[tag=invader,distance=..50] store result score @s invaderHealth run data get entity @s Health 10 

#Summons
##Summon Lautrec
execute at @a as @e[type=armor_stand,tag=animationDone,tag=lautrecInvade,distance=..50] at @s run function soulscraft:invasions/lautrec_invasion/invade




#Animations
execute at @a as @e[type=armor_stand,tag=invasionSpawned,distance=..50] at @s run function soulscraft:invasions/invasion_animation/spawn_animation

##Particle Animations
execute at @a as @e[type=glow_item_frame,tag=invade_sign,scores={soulsAnimationTimer=1..},distance=..50] at @s run function soulscraft:invasions/invasion_animation/particle_animation
##Estus Animation
execute at @a as @e[tag=invader,distance=..50,scores={soulsAnimationTimer=1..},tag=estusHealing] at @s run function soulscraft:invasions/estus_animation/estus_animation
###Knight Lautrec
execute at @a as @e[tag=knightLautrec,distance=..50,scores={estusHeals=1..,invaderHealth=..200}] at @s run function soulscraft:invasions/estus_animation/start_animation
execute at @a as @e[tag=knightLautrec,distance=..50,tag=estusDone] at @s run function soulscraft:invasions/lautrec_invasion/use_estus



