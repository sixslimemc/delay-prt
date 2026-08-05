# IMPL > delay-prt : enable_for
# main

$execute unless data storage delay:data tasks[{task_id:$(task_id)}] run return -1
$execute store result score *x _delay-prt run data modify storage delay:data tasks[{task_id:$(task_id)}].prt set value true
execute if score *x _delay-prt matches 0 run return -2
return 1