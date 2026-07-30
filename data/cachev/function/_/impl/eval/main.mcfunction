# IMPL > cachev : eval
# main

data modify storage cachev:in get_key.input set from storage cachev:_ eval[-1].in.input
function cachev:cache/get_key
data modify storage cachev:_ eval[-1].v.key set from storage cachev:out get_key.key
data modify storage cachev:_ eval[-1].v.quote set from storage cachev:out get_key.quote_type

data modify storage cachev:_ eval[-1].v.id set from storage cachev:_ eval[-1].in.id

# check cache:
# - {..cache_hit} will be populated with {index: int, value: CachevOut} if cached
data remove storage cachev:_ eval[-1].v.cache_hit
function cachev:_/impl/eval/check_cache/do with storage cachev:_ eval[-1].v

# return if cached and not forced:
execute if data storage cachev:_ eval[-1].v.cache_hit unless data storage cachev:_ eval[-1].in{force_run:true} run return run function cachev:_/impl/eval/cached

# get {..definition}:
function cachev:_/impl/eval/get_definition with storage cachev:_ eval[-1].v

# run:
# - populate {..entry}
data modify storage cachev:_ eval[-1].v.entry set value {input:{}, return:1, out:{}}
data modify storage cachev:_ eval[-1].v.entry.input set from storage cachev:_ eval[-1].in.input
data modify storage cachev:api eval append value {input:{}, out:{}}
data modify storage cachev:api eval[-1].input set from storage cachev:_ eval[-1].in.input
execute store result storage cachev:_ eval[-1].v.entry.return int 1 run function cachev:_/impl/eval/run with storage cachev:_ eval[-1].v.definition
data modify storage cachev:_ eval[-1].v.entry.out set from storage cachev:api eval[-1].out
data remove storage cachev:api eval[-1]

# set cache:
function cachev:_/impl/eval/set_cache/do

# out:
data modify storage cachev:_ eval[-1].out.out set from storage cachev:_ eval[-1].v.entry.out
data modify storage cachev:_ eval[-1].out.from_cache set value false
return run data get storage cachev:_ eval[-1].v.entry.return