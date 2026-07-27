#> cachev : definitions/register

data remove storage cachev:out register

execute store result score *x _cachev run function cachev:_/impl/definitions/register/main

data remove storage cachev:_ v.register
data remove storage cachev:in register

return 1