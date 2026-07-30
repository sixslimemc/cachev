# IMPL > cachev : cache/clear
# remove
#--------------------
# ./main
#--------------------

$execute unless data storage cachev:data definition.'$(id)' run return 0

$return run data modify storage cachev:data cache.'$(id)' set value {}