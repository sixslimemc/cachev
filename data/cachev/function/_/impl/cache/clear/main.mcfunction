# IMPL > cachev : cache/clear
# main

# with input branch:
execute if data storage cachev:in clear.input run return run function cachev:_/impl/cache/clear/input/do

# NO INPUT SPECIFIED

return run function cachev:_/impl/cache/clear/remove with storage cachev:in clear
