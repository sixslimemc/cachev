# IMPL > cachev : definitions/unregister
# ids/each
#--------------------
# ../main
#--------------------

data modify storage cachev:_ v.unregister.this_id set from storage cachev:in unregister.ids[-1]

function cachev:_/impl/definitions/unregister/ids/remove with storage cachev:_ v.unregister

data remove storage cachev:in unregister.ids[-1]
execute if data storage cachev:in unregister.ids[0] run function cachev:_/impl/definitions/unregister/ids/each