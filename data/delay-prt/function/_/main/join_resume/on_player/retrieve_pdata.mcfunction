#> delay-prt:_/main/join_resume/on_player/retrieve_pdata
#--------------------
# ./do
#--------------------

$data modify storage delay-prt:_ t.join.pdata set from storage pdata:data players[$(pdata_index)]
$data remove storage pdata:data players[$(pdata_index)].data.delay-prt.paused_tasks

data modify storage delay-prt:_ t.join.paused_tasks set from storage delay-prt:_ t.join.pdata.data.delay-prt.paused_tasks
data modify storage delay-prt:_ t.join.uuid set from storage delay-prt:_ t.join.pdata.uuid