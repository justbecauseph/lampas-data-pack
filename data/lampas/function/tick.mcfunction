# execute as @a[scores={deathCounter=1..}] at @s if score @s deathCounter matches 1 run tp @s -79.01 -47.00 -212.98
# execute as @a[scores={deathCounter=1..}] at @s if score @s deathCounter matches 1 run spawnpoint @s -79 -47 -212
# execute as @a[scores={deathCounter=1..}] at @s if score @s deathCounter matches ..1 run scoreboard players set @s deathCounter 0

execute as @a[x=-30000000,z=-30000000,dx=60000000,dz=60000000,y=-128,dy=3] at @s run spreadplayers ~ ~ 10 100 false @s
execute as @a[x=-30000000,z=-30000000,dx=60000000,dz=60000000,y=-128,dy=3] at @s run kill @s

# function lampas:death/respawn_countdown

execute as @a at @s unless score @s ID matches 1.. store result score @s ID run scoreboard players add #NextID ID 1

execute as @e[type=creeper] if entity @s run data merge entity @s {ExplosionRadius:0}

execute as @a[team=!noName] run team join noName @s