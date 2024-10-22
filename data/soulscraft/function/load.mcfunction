#--- Load messages ---
tellraw @a {"text": "[SoulsCraft] SoulsCraft V0.4 loaded successfully!", "color": "red"}

#--- Setup custom stats ---
##Playser stats
scoreboard objectives add soulStr dummy
execute as @a unless score @s soulStr matches 1.. run scoreboard players set @s soulStr 0
scoreboard objectives add soulDex dummy
execute as @a unless score @s soulDex matches 1.. run scoreboard players set @s soulDex 0
scoreboard objectives add soulFaith dummy
execute as @a unless score @s soulFaith matches 1.. run scoreboard players set @s soulFaith 0
scoreboard objectives add soulInt dummy
execute as @a unless score @s soulInt matches 1.. run scoreboard players set @s soulInt 0
scoreboard objectives add sc.ring_slots dummy
execute as @a unless score @s sc.ring_slots matches 0.. run scoreboard players set @s sc.ring_slots 4
##Bonfire
scoreboard objectives add soulscraftGui dummy
scoreboard objectives add bonfireGuiPage dummy
##Invasions
scoreboard objectives add soulsAnimationTimer dummy
scoreboard objectives add estusHeals dummy
scoreboard objectives add invaderHealth dummy
##Souls
scoreboard objectives add soulsLevelupCosts dummy
execute as @a unless score @s soulsLevelupCosts matches 4.. run scoreboard players set @s soulsLevelupCosts 4
scoreboard objectives add soulsLevelupTier dummy
execute as @a unless score @s soulsLevelupTier matches 1.. run scoreboard players set @s soulsLevelupTier 1
scoreboard objectives add soulsForLevelup dummy
execute as @a unless score @s soulsForLevelup matches 1.. run scoreboard players set @s soulsLevelupTier 1
scoreboard objectives add souls dummy
scoreboard objectives add humanity dummy

scoreboard objectives add youDied deathCount

scoreboard objectives add weakEnemyKill totalKillCount

scoreboard objectives add witherBossKill minecraft.killed:wither
scoreboard objectives add dragonBossKill minecraft.killed:ender_dragon

scoreboard objectives add elderGuardianKill minecraft.killed:elder_guardian
scoreboard objectives add wardenKill minecraft.killed:warden
scoreboard objectives add ravengerKill minecraft.killed:ravager
## Items
scoreboard objectives add soulsItemUse dummy
scoreboard objectives add soulsItemCharging dummy
scoreboard players set @a soulsItemCharging 0

scoreboard objectives add lastUsedBonfire_UUID_0 dummy
scoreboard objectives add lastUsedBonfire_UUID_1 dummy
scoreboard objectives add lastUsedBonfire_UUID_2 dummy
scoreboard objectives add lastUsedBonfire_UUID_3 dummy

scoreboard objectives add entity_uuid_0 dummy
scoreboard objectives add entity_uuid_1 dummy
scoreboard objectives add entity_uuid_2 dummy
scoreboard objectives add entity_uuid_3 dummy


#--- Add Teams ---
##Invader Team
team add invader
team modify invader color dark_red

##NoCollisionTeam
team add noCollision
team modify noCollision collisionRule never
