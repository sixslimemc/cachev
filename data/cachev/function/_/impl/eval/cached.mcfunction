# IMPL > cachev : eval
# cached
#--------------------
# ./main
#--------------------

data modify storage cachev:_ eval[-1].out.out set from storage cachev:_ eval[-1].v.cache_hit.value.out
data modify storage cachev:_ eval[-1].out.from_cache set value true
return run data get storage cachev_ eval[-1].v.cache_hit.value.return