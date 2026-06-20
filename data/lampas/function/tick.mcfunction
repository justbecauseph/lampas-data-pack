execute as @a[x=-30000000,z=-30000000,dx=60000000,dz=60000000,y=-128,dy=3] at @s run spreadplayers ~ ~ 10 100 false @s
execute as @a[x=-30000000,z=-30000000,dx=60000000,dz=60000000,y=-128,dy=3] at @s run kill @s

function lampas:death/respawn_countdown

execute as @a at @s unless score @s ID matches 1.. store result score @s ID run scoreboard players add #NextID ID 1

execute as @e[type=creeper] if entity @s run data merge entity @s {ExplosionRadius:0}

execute as @a[team=!noName] run team join noName @s

execute as @a[scores={biomeListen=..510}] at @s in lampas:mothers_grove run scoreboard players remove @s biomeListen 1


execute as @a[scores={biomeListen=..1}] at @s in lampas:mothers_grove run playsound lampas:deep_sea_golem_voice_random ambient @s ~ ~ ~ 0.5 0.5
execute as @a[scores={biomeListen=..1}] at @s in lampas:mothers_grove run scoreboard players set @s biomeListen 500
