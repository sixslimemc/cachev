# IMPL > cachev : eval
# set_cache/new
#--------------------
# ./do
#--------------------

$data modify storage cachev:data cache.'$(id)'.$(quote)$(key)$(quote) append from storage cachev:_ eval[-1].v.entry