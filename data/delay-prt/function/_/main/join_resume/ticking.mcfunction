#> delay-prt:_/main/join_resume/ticking
#--------------------
# _/entrypoints/join_resume
#--------------------
schedule function delay-prt:_/main/join_resume/ticking 1t

execute unless score *join_resume _delay-prt matches 1 run return 0