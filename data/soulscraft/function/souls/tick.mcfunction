execute as @a[scores={weakEnemyKill=1..}] at @s run function soulscraft:souls/gain_weak_soul

execute as @a[scores={wardenKill=1..}] at @s run function soulscraft:souls/gain_heroic_soul
execute as @a[scores={ravengerKill=1..}] at @s run function soulscraft:souls/gain_heroic_soul
execute as @a[scores={elderGuardianKill=1..}] at @s run function soulscraft:souls/gain_heroic_soul

#Humanity
execute as @a[scores={humanity=1..4}] at @s run effect give @s luck 10 0 true
execute as @a[scores={humanity=1}] at @s run effect give @s health_boost 10 0 true
execute as @a[scores={humanity=2}] at @s run effect give @s health_boost 10 1 true
execute as @a[scores={humanity=3}] at @s run effect give @s health_boost 10 2 true
execute as @a[scores={humanity=4}] at @s run effect give @s health_boost 10 3 true
execute as @a[scores={humanity=5}] at @s run effect give @s health_boost 10 4 true
execute as @a[scores={humanity=5}] at @s run effect give @s luck 10 1 true

execute as @a[scores={youDied=1..}] run function soulscraft:souls/player_died