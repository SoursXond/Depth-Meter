function depthmeter:item/depthmeter/update/player/modify/visual
function depthmeter:item/depthmeter/update/player/modify/sealevel
execute as @s[nbt={Inventory:[{tag:{DMToggle:1b}}]}] run function depthmeter:item/depthmeter/update/player/modify/ylevel

execute as @s[nbt={SelectedItem:{id:"minecraft:command_block"}}] run function depthmeter:item/depthmeter/actionbartext/mainhand
execute as @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:command_block"}]}] as @s[nbt=!{SelectedItem:{id:"minecraft:command_block"}}] unless entity @s[x_rotation=50..90,nbt={SelectedItem:{id:"minecraft:filled_map"}}] run function depthmeter:item/depthmeter/actionbartext/offhand