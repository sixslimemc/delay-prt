#> delay-prt:_/sc/load
# @ LOAD

scoreboard objectives add _delay-prt dummy

# DECLARE _scores:
# *leave_pause =? 1
# *join_resume =? 1

# DECLARE _tags:
# _.joined = added on hook doorman:join

# DEBUG
scoreboard players reset *init _delay-prt

execute unless score *init _delay-prt matches 1 run function delay-prt:_/sc/init