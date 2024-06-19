##remove last added item from shulkerbox

#It should works... In my test this command seems to remove the last item in shulker box always
data remove block ~ ~ ~ Items[-1]
scoreboard players set #give_full nt_core 1