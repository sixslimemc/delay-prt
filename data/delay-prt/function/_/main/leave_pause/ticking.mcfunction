#> delay-prt:_/main/leave_pause/ticking
#--------------------
# _/entrypoints/leave_pause
#--------------------
schedule function delay-prt:_/main/leave_pause/ticking 1t
execute unless score *leave_pause _delay-prt matches 1 run return 0

execute store result score *gametime _delay-prt run time query gametime
execute if data storage delay-prt:_ data.just_left[0] run function delay-prt:_/main/leave_pause/leaving_uuds/each

scoreboard players reset *leave_pause _delay-prt