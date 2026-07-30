# IMPL > cachev : cache/clear
# input/do
#--------------------
# ../main
#--------------------

data modify storage cachev:in get_key.input set from storage cachev:in clear.input
function cachev:cache/get_key
data modify storage cachev:_ v.clear.key set from storage cachev:out get_key.key
data modify storage cachev:_ v.clear.quote set from storage cachev:out get_key.quote_type

data modify storage cachev:_ v.clear.id set from storage cachev:in clear.id

return run function cachev:_/impl/cache/clear/input/remove with storage cachev:_ v.clear