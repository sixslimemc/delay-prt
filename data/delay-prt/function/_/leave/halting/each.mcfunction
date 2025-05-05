#> delay-prt:_/leave/halting/each
#--------------------
# ../trigger
#--------------------

execute store result score *x _delay-prt run data get storage delay-prt:_ var.leave.halting[-1].time
execute store result score *y _delay-prt run time query gametime
scoreboard players operation *x _delay-prt -= *y _delay-prt

execute store result storage delay-prt:_ var.leave.halting[-1].remaining_ticks int 1 run scoreboard players get *x _delay-prt

data remove storage delay-prt:_ var.leave.halting[-1].time
data remove storage delay-prt:_ var.leave.halting[-1].targets

data modify storage delay-prt:_ var.leave.new_halts prepend from storage delay-prt:_ var.leave.halting[-1]

data remove storage delay-prt:_ var.leave.halting[-1]
execute if data storage delay-prt:_ var.leave.halting[0] run function delay-prt:_/leave/halting/each