# IMPL > cachev : definitions/unregister
# main

execute if data storage cachev:in unregister.ids[0] run function cachev:_/impl/definitions/unregister/ids/each

return 1