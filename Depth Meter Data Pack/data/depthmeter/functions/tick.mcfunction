scoreboard players enable @a DMToggle
execute as @a unless entity @s[scores={DMToggle=0}] run function depthmeter:toggleelevation/try

execute as @e[predicate=depthmeter:entity_with_meter/any] at @s run function depthmeter:update/start

scoreboard players reset @e[predicate=!depthmeter:entity_with_meter/any] DMStoredY

tag @e[type=#depthmeter:item_frames,nbt=!{Item:{id:"minecraft:command_block"}}] remove DMUpdatedMeter

execute if score DMEnableMap DMRules matches 1 as @a[x_rotation=50..90,nbt={SelectedItem:{id:"minecraft:filled_map"}}] at @s run function depthmeter:map
execute if score DMEnableMap DMRules matches 1 as @a[x_rotation=50..90,nbt={Inventory:[{Slot:-106b,id:"minecraft:filled_map"}]}] as @s[nbt=!{SelectedItem:{id:"minecraft:filled_map"}}] as @s[nbt=!{SelectedItem:{id:"minecraft:command_block"}}] at @s run function depthmeter:map