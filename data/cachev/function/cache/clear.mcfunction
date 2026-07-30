#> cachev : cache/clear

data remove storage cachev:out clear

execute store result score *x _cachev run function cachev:_/impl/cache/clear/main

data remove storage cachev:_ v.clear
data remove storage cachev:in clear
scoreboard players reset *clear.index _cachev

return run scoreboard players get *x _cachev