#> delay-prt:_/main/leave_pause/ticking
#--------------------
# _/entrypoints/leave_pause
#--------------------
schedule function delay-prt:_/main/leave_pause/ticking 1t

execute unless score *leave_pause _delay-prt matches 1 run return 0