execute store result score @s DMPosX run data get entity @s Pos[0]
execute store result score @s DMPosZ run data get entity @s Pos[2]

data modify storage abcl:storage temp.message set value {Message: '["","X:",{"score":{"name":"@s","objective":"DMPosX"}}," | ","Z:",{"score":{"name":"@s","objective":"DMPosZ"}}]', Priority: 2, ClearImmediately: 1b}
function abcl:message/check

scoreboard players reset @s DMPosX
scoreboard players reset @s DMPosZ