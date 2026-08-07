#> delay-prt:_/main/join_resume/on_player/do
#--------------------
# ../do
#--------------------

data modify storage delay-prt:_ t.join.original_task set from storage delay-prt:_ t.join.paused_tasks[0].task

# resume task:
data modify storage delay:in delay.targets set value [{uuid:[0, 0, 0, 0]}]
data modify storage delay:in delay.targets[0].uuid set from storage delay-prt:_ t.join.uuid
data modify storage delay:in delay.command set from storage delay-prt:_ t.join.original_task.command
data modify storage delay:in delay.failsafe set from storage delay-prt:_ t.join.original_task.failsafe
data modify storage delay:in delay.data set from storage delay-prt:_ t.join.original_task.data
data modify storage delay:in delay.attachments set from storage delay-prt:_ t.join.original_task.attachments
data modify storage delay:in delay.ticks set from storage delay-prt:_ t.join.paused_tasks[0].remaining_ticks
function delay:targets/delay

data remove storage delay-prt:_ t.join.paused_tasks[0]
execute if data storage delay-prt:_ t.join.paused_tasks[0] run function delay-prt:_/main/join_resume/on_player/paused_tasks/each