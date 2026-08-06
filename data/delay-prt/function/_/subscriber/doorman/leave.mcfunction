#> delay-prt:_/subscriber/doorman/leave
# @subscriber : doorman:leave

scoreboard players set *leave_pause _delay-prt 1

data modify storage delay-prt:_ data.just_left append from storage doorman:hook leave.uuid