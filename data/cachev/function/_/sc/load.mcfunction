#> cachev:_/sc/load
# @ LOAD

scoreboard objectives add _cachev dummy



# DEBUG
scoreboard players reset *init _cachev

execute unless score *init _cachev matches 1 run function cachev:_/sc/init

function cachev:_/main/wipe_data