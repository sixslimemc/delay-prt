#> delay-prt:_/leave/trigger
#--------------------
# doorman <!> leave
#--------------------

$data modify storage delay-prt:_ var.leave.halting append from storage delay:data tasks[{prt:true, targets:[{uuid:$(uuid)}]}]
$data remove storage delay:data tasks[{prt:true, targets:[{uuid:$(uuid)}]}].targets[{uuid:$(uuid)}]

$data modify storage delay-prt:_ var.leave.p_entry set from storage pdata:data players[{uuid:$(uuid)}]