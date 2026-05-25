execute if score @s respawnCountdown matches 1 run tp @s @e[type=marker,tag=respawnPoint,limit=1]
execute if score @s respawnCountdown matches 1 run gamemode survival @s
execute if score @s respawnCountdown matches 1 run scoreboard players set @s has_save 0
execute if score @s respawnCountdown matches 1..200 run scoreboard players set @s respawnCountdown 0
execute if score @s respawnCountdown matches 0 run tag @s remove respawnPending