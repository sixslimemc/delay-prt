#> delay-prt:_/main/leave_pause/leaving_uuids/retrieve_tasks
#--------------------
# ./each
#--------------------

$data modify storage delay-prt:_ t.leave.tasks append from storage delay:data tasks[{attachments:{delay-prt:{prt:true}}, targets:[$(uuid)]}]

$data remove storage delay:data tasks[{attachments:{delay-prt:{prt:true}}, targets:[$(uuid)]}]