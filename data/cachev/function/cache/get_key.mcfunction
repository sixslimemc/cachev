#> cachev : cache/get_key

data remove storage cachev:out get_key

execute store result score *x _cachev run function cachev:_/impl/cache/get_key/main

data remove storage cachev:_ v.get_key
data remove storage cachev:in get_key
scoreboard players reset *get_key.success _cachev
scoreboard players reset *get_key.hash _cachev

return 1