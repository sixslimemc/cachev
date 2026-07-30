#> cachev : eval

data remove storage cachev:out eval

data modify storage cachev:_ eval append value {in:{}, out:{}, v:{}}
data modify storage cachev:_ eval[-1].in set from storage cachev:in eval
data remove storage cachev:in eval

execute store result score *x _cachev run function cachev:_/impl/eval/main

data modify storage cachev:out eval set from storage cachev:_ eval[-1].out
data remove storage cachev:_ eval[-1]

return run scoreboard players get *x _cachev