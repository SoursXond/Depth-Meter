scoreboard players enable @s DMToggle
execute unless entity @s[scores={DMToggle=0}] run function depthmeter:item/depthmeter/toggleelevation/try

execute if score DMEnableMap DMRules matches 1 as @s[x_rotation=50..90,nbt={SelectedItem:{id:"minecraft:filled_map"}}] run function depthmeter:item/mapcoords
execute if score DMEnableMap DMRules matches 1 as @s[x_rotation=50..90,predicate=depthmeter:entity/player/map_offhand] run function depthmeter:item/mapcoords