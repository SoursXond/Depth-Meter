execute store result score @s DMPosY run data get entity @s Pos[1]
execute unless score @s[predicate=depthmeter:entity/location/blocks_from_sea_level] DMPosY = @s DMStoredY run function depthmeter:entity/distancefromsealevel

execute as @s[type=player] run function depthmeter:item/depthmeter/update/player/start
execute as @s[type=#depthmeter:chestable] run function depthmeter:item/depthmeter/update/chestable/start
execute as @s[type=item] run function depthmeter:item/depthmeter/update/itementity
execute as @s[type=#depthmeter:item_frames,tag=!DMUpdatedMeter] run function depthmeter:item/depthmeter/update/itemframe

execute store result score @s DMStoredY run data get entity @s Pos[1]
execute unless score @s DMPosY = @s DMStoredY run scoreboard players reset @s DMPosY
execute unless score @s DMPosY = @s DMStoredY run scoreboard players reset @s DMDistSeaLvl