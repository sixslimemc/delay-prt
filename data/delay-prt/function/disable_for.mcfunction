#> delay-prt : disable_for
#--------------------
# -> task_id: TaskID
#--------------------
# .
#--------------------
# TODO: description
#--------------------
# 1: PRT successfully enabled for task.
# 0: PRT is already enabled for the task, or no task with <task_id> is scheduled.
#--------------------

data merge storage delay-prt:_ {set_prt:false}
function delay-prt:_/set_prt/for_task with storage delay-prt:in enable_for

data remove storage delay-prt:in enable_for
