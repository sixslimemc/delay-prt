#> delay-prt : disable_for

execute store result score *x _delay-prt run function delay-prt:_/impl/disable_for/main with storage delay-prt:in disable_for

data remove storage delay-prt:in disable_for

return run scoreboard players get *x _delay-prt