# IMPL > cachev : definitions/register
# defs/each
#--------------------
# ../main
#--------------------

data modify storage cachev:_ v.register.this_def set from storage cachev:in register.definitions[-1]

function cachev:_/impl/definitions/register/defs/map with storage cachev:_ v.register.this_def

data remove storage cachev:in register.definitions[-1]
execute if data storage cachev:in register.definitions[0] run function cachev:_/impl/definitions/register/defs/each