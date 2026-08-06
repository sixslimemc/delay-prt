#> delay-prt:_/main/leave_pause/leaving_uuids/each
#--------------------
# ../ticking
#--------------------

data modify storage delay-prt:_ t.leave.uuid set from storage delay-prt:_ data.just_left[-1]

data modify storage delay-prt:_ t.leave.tasks set value []
data modify storage delay-prt:_ t.leave.paused_tasks set value []

# retrieve tasks:
# - populate {..tasks}:
function delay-prt:_/main/leave_pause/leaving_uuds/retrieve_tasks with storage delay-prt:_ t.leave

# each task:
# - populate {..paused_tasks}:
execute if data storage delay-prt:_ t.leave.tasks[0] run function delay-prt:_/main/leave_pause/leaving_uuds/tasks/each

# set pdata:
function delay-prt:_/main/leave_pause/leaving_uuds/set_pdata with storage delay-prt:_ t.leave

data remove storage delay-prt:_ data.just_left[-1]
execute if data storage delay-prt:_ data.just_left[0] run function delay-prt:_/main/leave_pause/leaving_uuds/each
