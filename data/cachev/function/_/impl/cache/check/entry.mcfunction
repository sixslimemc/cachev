# IMPL > cachev : cache/check
# entry
#--------------------
# ./main
#--------------------

data remove storage cachev:_ v.check.cached
$data modify storage cachev:_ v.check.cached set from storage cachev:data cache.'$(id)'.$(quote)$(key)$(quote)
execute unless data storage cachev:_ v.check.cached run return 0

# *.index = max cache list index:
execute store result score *check.index _cachev if data storage cachev:_ v.check.cached[]
scoreboard players remove *check.index _cachev 1

# safegaurd return if 0 elements:
execute if score *check.index _cachev matches ..-1 run return 0

# return early if only 1 element:
execute if score *check.index _cachev matches 0 run data modify storage cachev:out check.result set from storage cachev:_ v.check.cached[0]
execute if score *check.index _cachev matches 0 run return 1

# MULTIPLE CACHE ELEMENTS

# find matching cache element:
function cachev:_/impl/cache/check/find

# return 0 if not found:
execute if score *check.index _cachev matches ..-1 run return 0

# return found:
data modify storage cachev:out check.result set from storage cachev:_ v.check.cached[-1]
return 1