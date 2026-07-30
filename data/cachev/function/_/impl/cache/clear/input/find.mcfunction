# IMPL > cachev : cache/clear
# input/find
#--------------------
# ./remove
#--------------------


# return if matching input found:
execute store success score *x _cachev run data modify storage cachev:_ v.clear.cached[-1].input set from storage cachev:in clear.input
execute if score *x _cachev matches 0 run return 1

scoreboard players remove *clear.index _cachev 1
data remove storage cachev:_ v.clear.cached[-1]
execute if score *clear.index _cachev matches 0.. run function cachev:_/impl/cache/clear/input/find