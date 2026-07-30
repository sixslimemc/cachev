# IMPL > cachev : eval
# set_cache/do
#--------------------
# ../main
#--------------------

# return if new entry:
execute unless data storage cachev:_ eval[-1].v.cache_hit run return run function cachev:_/impl/eval/set_cache/new with storage cachev:_ eval[-1].v

# EXISTING ENTRY

data modify storage cachev:_ eval[-1].v.index set from storage cachev:_ eval[-1].v.cache_hit.index
function cachev:_/impl/eval/set_cache/existing with storage cachev:_ eval[-1].v