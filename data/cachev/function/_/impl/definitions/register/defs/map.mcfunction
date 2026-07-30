# IMPL > cachev : definitions/register
# defs/map
#--------------------
# ./each
#--------------------

$data modify storage cachev:data definition.'$(id)' set from storage cachev:_ v.register.this_def
$data remove storage cachev:data cache.'$(id)'
