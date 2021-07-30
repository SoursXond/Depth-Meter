execute store result score @s DMPosY run data get entity @s Pos[1]
execute unless score @s[predicate=depthmeter:blocks_from_sea_level] DMPosY = @s DMStoredY run function depthmeter:update/getdistancefromsealevel

execute as @s[type=player] run function depthmeter:update/player/start
execute as @s[type=#depthmeter:chestable] run function depthmeter:update/chestable/start
execute as @s[type=item] run function depthmeter:update/item
execute as @s[type=#depthmeter:item_frames] run function depthmeter:update/itemframe

execute store result score @s DMStoredY run data get entity @s Pos[1]
execute unless score @s DMPosY = @s DMStoredY run scoreboard players reset @s DMPosY
execute unless score @s DMPosY = @s DMStoredY run scoreboard players reset @s DMDistSeaLvl