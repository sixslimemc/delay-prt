#> delay-prt:_/main/leave_pause/leaving_uuids/retrieve_tasks
#--------------------
# ./each
#--------------------

# LEFTOFF:
# we cant do this. we must remove targets individually from the task instead of removing the whole task.
# change the definition of 'targets' to key-wrap uuids with 'uuid' key to do this efficiently.

$data modify storage delay-prt:_ t.leave.tasks append from storage delay:data tasks[{attachments:{delay-prt:{prt:true}}, targets:[$(uuid)]}]

$data remove storage delay:data tasks[{attachments:{delay-prt:{prt:true}}, targets:[$(uuid)]}]