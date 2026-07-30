# IMPL > cachev : cache/check
# main

data modify storage cachev:in get_key.input set from storage cachev:in check.input
function cachev:cache/get_key
data modify storage cachev:_ v.check.key set from storage cachev:out get_key.key
data modify storage cachev:_ v.check.quote set from storage cachev:out get_key.quote_type

data modify storage cachev:_ v.check.id set from storage cachev:in check.id

return run function cachev:_/impl/cache/check/entry with storage cachev:_ v.check