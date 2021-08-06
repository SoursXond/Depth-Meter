execute as @s[type=player] run function depthmeter:entity/player

execute as @s[predicate=depthmeter:entity/has_meter] run function depthmeter:item/depthmeter/update/start

scoreboard players reset @s[predicate=!depthmeter:entity/has_meter] DMStoredY

tag @s[type=#depthmeter:item_frames,nbt=!{Item:{id:"minecraft:command_block"}}] remove DMUpdatedMeter