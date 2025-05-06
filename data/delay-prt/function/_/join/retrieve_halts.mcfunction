#> delay-prt:_/join/retrieve_halts
#--------------------
# ./trigger
#--------------------

$data modify storage delay-prt:_ var.join.resumes append from storage pdata:data players[$(pindex)].data.delay-prt.halted[]
$data modify storage pdata:data players[$(pindex)].data.delay-prt.halted set value []
