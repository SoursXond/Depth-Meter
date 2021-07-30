tellraw @a[gamemode=!survival] {"translate":"depthmeter.load"}
playsound minecraft:entity.arrow.hit_player master @a[gamemode=!survival] ~ ~ ~ 2 1 1

gamerule reducedDebugInfo true
scoreboard objectives add DMRules dummy
scoreboard objectives add DMToggle trigger

scoreboard objectives add DMPosX dummy
scoreboard objectives add DMPosY dummy
scoreboard objectives add DMPosZ dummy

scoreboard objectives add DMStoredY dummy
scoreboard objectives add DMDistSeaLvl dummy
scoreboard objectives add DMMaths dummy