#> delay-prt:_/main/leave_pause/leaving_uuids/tasks/each
#--------------------
# ../each
#--------------------

# append to {..paused_tasks}:
data modify storage delay-prt:_ t.leave.paused_tasks append value {remaining_ticks:0, task:{}}

# set task:
data modify storage delay-prt:_ t.leave.paused_tasks[-1].task set from storage delay-prt:_ t.leave.tasks[-1]

# set remaining ticks:
execute store result score *x _delay-prt run data get storage delay-prt:_ t.leave.tasks[-1].time
scoreboard players operation *x _delay-prt -= *gametime _delay-prt
execute store result storage delay-prt:_ t.leave.paused_tasks[-1].remaining_ticks int 1 run scoreboard players get *x _delay-prt

data remove storage delay-prt:_ t.leave.tasks[-1]
execute if data storage delay-prt:_ t.leave.tasks[0] run function delay-prt:_/main/leave_pause/leaving_uuds/tasks/each