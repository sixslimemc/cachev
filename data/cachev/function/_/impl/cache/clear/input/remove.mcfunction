# IMPL > cachev : cache/clear
# input/remove
#--------------------
# ./do
#--------------------

data remove storage cachev:_ v.clear.cached
$data modify storage cachev:_ v.clear.cached set from storage cachev:data cache.'$(id)'.$(quote)$(key)$(quote)
execute unless data storage cachev:_ v.clear.cached run return 0

# *.index = max cache list index:
execute store result score *clear.index _cachev if data storage cachev:_ v.clear.cached[]
scoreboard players remove *clear.index _cachev 1

# remove entire cache list if only 1 element:
$execute if score *clear.index _cachev matches ..0 run data remove storage cachev:data cache.'$(id)'.$(quote)$(key)$(quote)
execute if score *clear.index _cachev matches ..0 run return 1

# MULTIPLE CACHE ELEMENTS

# find matching cache element:
function cachev:_/impl/cache/clear/input/find

# return 0 if not found:
execute if score *clear.index _cachev matches ..-1 run return 0

# remove index:
execute store result storage cachev:_ v.clear.index int 1 run scoreboard players get *clear.index _cachev
function cachev:_/impl/cache/clear/input/remove_index with storage cachev:_ v.clear
return 1