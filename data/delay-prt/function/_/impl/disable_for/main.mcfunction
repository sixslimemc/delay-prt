# IMPL > delay-prt : disable_for
# main

$execute unless data storage delay:data tasks[{task_id:$(task_id)}] run return -1
$execute store result score *x _delay-prt run data remove storage delay:data tasks[{task_id:$(task_id)}].prt
execute if score *x _delay-prt matches 0 run return -2
return 1