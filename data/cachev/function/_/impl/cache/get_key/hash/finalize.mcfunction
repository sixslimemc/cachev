# IMPL > cachev : cache/get_key
# hash/finalize
#--------------------
# ./do
#--------------------

execute store result storage cachev:out get_key.key int 1 run scoreboard players get *get_key.hash _cachev
data modify storage cachev:out get_key.quote_type set value "'"
return 1