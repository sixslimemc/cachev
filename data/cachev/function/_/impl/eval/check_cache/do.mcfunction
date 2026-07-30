# IMPL > cachev : eval
# check_cache/do
#--------------------
# ../main
#--------------------

data remove storage cachev:_ eval[-1].v.cached
$data modify storage cachev:_ eval[-1].v.cached set from storage cachev:data cache.'$(id)'.$(quote)$(key)$(quote)
execute unless data storage cachev:_ eval[-1].v.cached run return 0

# *.index = max cache list index:
execute store result score *eval.index _cachev if data storage cachev:_ eval[-1].v.cached[]
scoreboard players remove *eval.index _cachev 1

# safegaurd return if 0 elements:
execute if score *eval.index _cachev matches ..-1 run return 0

# return early if only 1 element:
execute if score *eval.index _cachev matches 0 run data modify storage cachev:_ eval[-1].v.cache_hit.value set from storage cachev:_ eval[-1].v.cached[0]
execute if score *eval.index _cachev matches 0 run data modify storage cachev:_ eval[-1].v.cache_hit.index set value 0
execute if score *eval.index _cachev matches 0 run return 1

# MULTIPLE CACHE ELEMENTS

# find matching cache element:
function cachev:_/impl/eval/check_cache/find

# return 0 if not found:
execute if score *eval.index _cachev matches ..-1 run return 0

# return found:
data modify storage cachev:_ eval[-1].v.cache_hit.value set from storage cachev:_ eval[-1].v.cached[-1]
execute store result storage cachev:_ eval[-1].v.cache_hit.index int 1 run scoreboard players get *eval.index _cachev
return 1