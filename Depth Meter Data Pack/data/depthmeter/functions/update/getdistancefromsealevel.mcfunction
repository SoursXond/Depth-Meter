scoreboard players operation @s DMDistSeaLvl = @s DMPosY
scoreboard players set @s[predicate=depthmeter:overworld/in_dimension] DMMaths 62
scoreboard players set @s[predicate=depthmeter:nether/in_dimension] DMMaths 31
scoreboard players operation @s DMDistSeaLvl -= @s DMMaths

scoreboard players set @s[scores={DMDistSeaLvl=..-1}] DMMaths -1
scoreboard players operation @s[scores={DMDistSeaLvl=..-1}] DMDistSeaLvl *= @s DMMaths

scoreboard players reset @s DMMaths