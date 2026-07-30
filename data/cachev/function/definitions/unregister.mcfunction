#> cachev : definitions/unregister

data remove storage cachev:out unregister

execute store result score *x _cachev run function cachev:_/impl/definitions/unregister/main

data remove storage cachev:_ v.unregister
data remove storage cachev:in unregister

return 1