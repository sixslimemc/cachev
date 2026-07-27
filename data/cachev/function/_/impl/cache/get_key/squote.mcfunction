# IMPL > cachev : cache/get_key
# squote
#--------------------
# ./main
#--------------------

$data modify storage cachev:out get_key set value {key:'$(input)', quote_type:"'"}
scoreboard players set *get_key.success _cachev 1