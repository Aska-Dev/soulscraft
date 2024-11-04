#Check longsword
execute as @a if predicate soulscraft:stats_checker/longsword/has_longsword unless predicate soulscraft:stats_checker/longsword/can_use_longsword run function soulscraft:items/disable_item_use
execute as @a if predicate soulscraft:stats_checker/dagger/has_dagger unless predicate soulscraft:stats_checker/dagger/can_use_dagger run function soulscraft:items/disable_item_use
execute as @a if predicate soulscraft:stats_checker/bastardsword/has_bastardsword unless predicate soulscraft:stats_checker/bastardsword/can_use_bastardsword run function soulscraft:items/disable_item_use