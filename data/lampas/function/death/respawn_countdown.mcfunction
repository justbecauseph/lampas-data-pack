execute as @a[scores={deathCounter=1..5}] at @s run scoreboard players set @s deathCounter 1
execute as @a[scores={deathCounter=..1}] at @s run tag @s add dead
execute as @a[scores={deathCounter=..1}] at @s run spawnpoint @s ~ ~ ~ ~

execute as @a[scores={deathCounter=1}] at @s run gamemode spectator @s

execute as @a[tag=dead] at @s if score @s deathCounter matches 1 run scoreboard players set @s respawnCountdown 60
execute as @a[tag=dead,tag=!respawnPending] at @s if score @s deathCounter matches 1 run tag @s add respawnPending
execute as @a[tag=dead] at @s if score @s deathCounter matches 1 run scoreboard players set @s deathCounter 0
execute as @a[tag=dead] at @s run tag @s remove dead
execute as @a[tag=respawnPending] at @s if score @s deathCounter matches 0 if score @s respawnCountdown matches 1..60 run scoreboard players remove @s respawnCountdown 1
execute as @a[tag=respawnPending] at @s if score @s respawnCountdown matches 1 run function lampas:death/respawn
execute as @a[tag=respawnPending] at @s if score @s respawnCountdown matches 20 run say Bangon na.