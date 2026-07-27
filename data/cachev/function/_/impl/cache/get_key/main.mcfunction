# IMPL > cachev : cache/get_key
# main

scoreboard players set *get_key.success _cachev 0

function cachev:_/impl/cache/get_key/squote with storage cachev:in get_key
execute if score *get_key.success _cachev matches 1 run return 1

function cachev:_/impl/cache/get_key/dquote with storage cachev:in get_key
execute if score *get_key.success _cachev matches 1 run return 1

execute summon text_display run function cachev:_/impl/cache/get_key/hash/do

return 1