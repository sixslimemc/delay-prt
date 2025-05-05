#> delay-prt : enable
#--------------------
# .
#--------------------
# .
#--------------------
# TODO: description
#--------------------
# 1: PRT successfully enabled for last created task.
# 0: PRT is already enabled for the last created task, or there are no tasks scheduled.
#--------------------

return run data modify storage delay:data tasks[-1].prt set value true
