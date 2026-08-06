#> delay-prt:_/main/leave_pause/leaving_uuids/each
#--------------------
# ../ticking
#--------------------

data modify storage delay-prt:_ t.leave.uuid set from storage delay-prt:_ data.just_left[-1]

data remove storage delay-prt:_ data.just_left[-1]
execute if data storage delay-prt:_ data.just_left[0] run function delay-prt:_/main/leave_pause/leaving_uuds/each
