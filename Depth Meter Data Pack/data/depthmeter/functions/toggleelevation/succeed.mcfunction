tellraw @s[scores={DMToggle=3..}] ["",{"translate":"commands.toggle.too_high","color":"red"},{"score":{"name":"@s","objective":"DMToggle"},"color":"red"}]
tellraw @s[scores={DMToggle=..-1}] ["",{"translate":"commands.toggle.too_low","color":"red"},{"score":{"name":"@s","objective":"DMToggle"},"color":"red"}]

item modify entity @s[nbt={SelectedItem:{id:"minecraft:command_block"}}] weapon.mainhand depthmeter:toggle_elevation
execute as @s[nbt=!{SelectedItem:{id:"minecraft:command_block"}}] run item modify entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:command_block"}]}] weapon.offhand depthmeter:toggle_elevation