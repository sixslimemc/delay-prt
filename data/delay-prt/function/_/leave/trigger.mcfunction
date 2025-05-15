#> delay-prt:_/leave/trigger
#--------------------
# doorman <!> leave
#--------------------

# {..halting} & {..p_entry}:
function delay-prt:_/leave/get_halting with storage doorman:hook leave

execute store result score *leave.halts _delay-prt if data storage delay-prt:_ var.leave.halting[]

# {..new_halts}
execute if data storage delay-prt:_ var.leave.halting[0] run function delay-prt:_/leave/halting/each

# set halted:
function delay-prt:_/leave/append_halts with storage delay-prt:_ var.leave.p_entry

scoreboard players reset *leave.halts _delay-prt
data remove storage delay-prt:_ var.leave