# IMPL > cachev : eval
# check_cache/find
#--------------------
# ./do
#--------------------


# return if matching input found:
execute store success score *x _cachev run data modify storage cachev:_ eval[-1].v.cached[-1].input set from storage cachev:_ eval[-1].in.input
execute if score *x _cachev matches 0 run return 1

scoreboard players remove *eval.index _cachev 1
data remove storage cachev:_ eval[-1].v.cached[-1]
execute if score *eval.index _cachev matches 0.. run function cachev:_/impl/eval/check_cache/find