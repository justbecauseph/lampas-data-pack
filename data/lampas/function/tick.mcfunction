function lampas:death/respawn_countdown

execute as @a at @s unless score @s ID matches 1.. store result score @s ID run scoreboard players add #NextID ID 1