execute as @s if entity @a[tag=gateway] in minecraft:overworld run tp @s Furguston
execute as @s unless entity @a[tag=gateway] in minecraft:overworld run tp @s 715 79 -563 0 -90
playsound minecraft:block.bell.resonate master @a ~ ~ ~ 5 2
playsound aeronautics:block.levitite.break master @a ~ ~ ~ 5 0.2