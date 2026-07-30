# IMPL > cachev : cache/get_key
# hash/do
# AS [text display]
#--------------------
# ../main
#--------------------
kill @s

data modify entity @s text set value {storage:"cachev:in", nbt:"get_key.input", plain:true}
data modify storage cachev:_ v.get_key.buffer set from entity @s text.extra

# length hash:
execute store result score *get_key.hash _cachev if data storage cachev:_ v.get_key.buffer[]
scoreboard players set *x _cachev 1895577
scoreboard players operation *get_key.hash _cachev *= *x _cachev

# content hashes:

execute unless data storage cachev:_ v.get_key.buffer[4] run return run function cachev:_/impl/cache/get_key/hash/finalize
execute store result score *x _cachev run data get storage cachev:_ v.get_key.buffer[4] 169
scoreboard players add *x _cachev 141
scoreboard players operation *get_key.hash _cachev *= *x _cachev

execute unless data storage cachev:_ v.get_key.buffer[11] run return run function cachev:_/impl/cache/get_key/hash/finalize
execute store result score *x _cachev run data get storage cachev:_ v.get_key.buffer[11] 994737
scoreboard players add *x _cachev 252
scoreboard players operation *get_key.hash _cachev *= *x _cachev

execute unless data storage cachev:_ v.get_key.buffer[13] run return run function cachev:_/impl/cache/get_key/hash/finalize
execute store result score *x _cachev run data get storage cachev:_ v.get_key.buffer[13] 994737
scoreboard players add *x _cachev 363
scoreboard players operation *get_key.hash _cachev *= *x _cachev

execute unless data storage cachev:_ v.get_key.buffer[20] run return run function cachev:_/impl/cache/get_key/hash/finalize
execute store result score *x _cachev run data get storage cachev:_ v.get_key.buffer[20] 579
scoreboard players add *x _cachev 474
scoreboard players operation *get_key.hash _cachev += *x _cachev

execute unless data storage cachev:_ v.get_key.buffer[22] run return run function cachev:_/impl/cache/get_key/hash/finalize
execute store result score *x _cachev run data get storage cachev:_ v.get_key.buffer[22] 97
scoreboard players add *x _cachev 585
scoreboard players operation *get_key.hash _cachev *= *x _cachev

execute unless data storage cachev:_ v.get_key.buffer[29] run return run function cachev:_/impl/cache/get_key/hash/finalize
execute store result score *x _cachev run data get storage cachev:_ v.get_key.buffer[29] 2411
scoreboard players add *x _cachev 696
scoreboard players operation *get_key.hash _cachev *= *x _cachev

return run function cachev:_/impl/cache/get_key/hash/finalize