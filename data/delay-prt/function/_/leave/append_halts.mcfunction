#> delay-prt:_/leave/append_halts
#--------------------
# ./trigger
#--------------------

$data modify storage pdata:data players[$(index)].data.delay-prt.halted append from storage delay-prt:_ var.leave.new_halts[]