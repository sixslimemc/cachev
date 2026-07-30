# IMPL > cachev : cache/check
# input/find
#--------------------
# ./remove
#--------------------


# return if matching input found:
execute store success score *x _cachev run data modify storage cachev:_ v.check.cached[-1].input set from storage cachev:in check.input
execute if score *x _cachev matches 0 run return 1

scoreboard players remove *check.index _cachev 1
data remove storage cachev:_ v.check.cached[-1]
execute if score *check.index _cachev matches 0.. run function cachev:_/impl/cache/check/find