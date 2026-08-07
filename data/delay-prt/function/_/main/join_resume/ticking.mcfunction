#> delay-prt:_/main/join_resume/ticking
#--------------------
# _/entrypoints/join_resume
#--------------------
schedule function delay-prt:_/main/join_resume/ticking 1t
execute unless score *join_resume _delay-prt matches 1 run return 0

execute store result score *gametime _delay-prt run time query gametime
execute as @a[tag=_delay-prt.joined] run function delay-prt:_/main/join_resume/on_player/do

data remove storage delay-prt:_ t.join
scoreboard players reset *join_resume _delay-prt