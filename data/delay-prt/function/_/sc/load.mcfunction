#> delay-prt:_/sc/load
# @ LOAD

scoreboard objectives add _delay-prt dummy



# DEBUG
scoreboard players reset *init _delay-prt

execute unless score *init _delay-prt matches 1 run function delay-prt:_/sc/init