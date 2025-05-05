#> delay-prt:_/pdata_register
#--------------------
# _/subscriber/pdata/on_register
#--------------------

data merge storage pdata:in {set:{path:"delay-prt.halted_tasks", value:[]}}
function pdata:self/set