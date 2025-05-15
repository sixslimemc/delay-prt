#> delay-prt:_/join/trigger
#--------------------
# doorman <!> join
#--------------------

execute store result storage delay-prt:_ var.join.pindex int 1 run scoreboard players get @s pdata.index

# set {..resumes} and clear this players halted:
function delay-prt:_/join/retrieve_halts with storage delay-prt:_ var.join

# resume each halted task:
execute if data storage delay-prt:_ var.join.resumes[0] run function delay-prt:_/join/resumes/each

data remove storage delay-prt:_ var.join