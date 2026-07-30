# IMPL > cachev : eval
# set_cache/existing
#--------------------
# ./do
#--------------------

$data modify storage cachev:data cache.'$(id)'.$(quote)$(key)$(quote)[$(index)] set from storage cachev:_ eval[-1].v.entry