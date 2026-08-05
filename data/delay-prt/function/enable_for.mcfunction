#> delay-prt : enable_for

execute store result score *x _delay-prt run function delay-prt:_/impl/enable_for/main with storage delay-prt:in enable_for

data remove storage delay-prt:in enable_for

return run scoreboard players get *x _delay-prt