##init player storage

data modify storage nt:tmp tmp.playerdata prepend value {}
data modify storage nt:tmp tmp.playerdata[0].UUID set from storage nt:import import.playerdata[0].UUID
