#> cachev : cache/check

data remove storage cachev:out check

execute store result score *x _cachev run function cachev:_/impl/cache/check/main

data remove storage cachev:_ v.check
data remove storage cachev:in check
scoreboard players reset *check.index _cachev

return run scoreboard players get *x _cachev