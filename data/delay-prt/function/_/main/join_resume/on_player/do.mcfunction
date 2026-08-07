#> delay-prt:_/main/join_resume/on_player/do
# AS [joining player]
#--------------------
# ../ticking
#--------------------

# get data:
# - set {..paused_tasks}
# - set {..uuid}
execute store result storage delay-prt:_ t.join.pdata_index int 1 run scoreboard players get @s pdata.index
function delay-prt:_/main/join_resume/on_player/retrieve_pdata with storage delay-prt:_ t.join

# each paused task:
execute if data storage delay-prt:_ t.join.paused_tasks[0] run function delay-prt:_/main/join_resume/on_player/paused_tasks/each


