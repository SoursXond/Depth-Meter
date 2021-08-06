execute if score DMDisableToggle DMRules matches 1 run tellraw @s {"translate":"commands.toggle.disabled","color":"red"}

execute unless score DMDisableToggle DMRules matches 1 run function depthmeter:item/depthmeter/toggleelevation/succeed

scoreboard players reset @s DMToggle