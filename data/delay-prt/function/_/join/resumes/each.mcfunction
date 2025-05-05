#> delay-prt:_/join/resumes/each
#--------------------
# ../trigger
#--------------------

data modify storage delay-prt:_ var.join.this_resume set from storage delay-prt:_ var.join.resumes[0]

data modify storage delay:in delay.command set from storage delay-prt:_ var.join.resumes[0].command
data modify storage delay:in delay.failsafe set from storage delay-prt:_ var.join.resumes[0].failsafe
data modify storage delay:in delay.data set from storage delay-prt:_ var.join.resumes[0].data
data modify storage delay:in delay.ticks set from storage delay-prt:_ var.join.resumes[0].remaining_ticks
function delay:delay
function delay-prt:enable

data remove storage delay-prt:_ var.join.resumes[0]
execute if data storage delay-prt:_ var.join.resumes[0] run function delay-prt:_/join/resumes/each