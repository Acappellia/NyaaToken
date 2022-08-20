import mcuuid
import numpy as np
import csv
import os

def twos_complement(hexstr,bits):
    value = int(hexstr,16)
    if value & (1 << (bits-1)):
        value -= 1 << bits
    return value

def get_int_array(playername):
    print('importing ' + playername)
    player = mcuuid.MCUUID(name=playername)
    playerid = str(player.uuid)
    int_array = '[I; '
    for i in range(4):
        sep = playerid[8*i:8*i+8]
        int_array += (str(twos_complement(sep,32))+', ')
    int_array = int_array.strip(', ') + ']'
    return int_array

rows = []
with open('rewarddata.csv') as file:
    csvreader = csv.reader(file)
    header = next(csvreader)
    for row in csvreader:
        rows.append(row)

playerdatalist = []
for row in rows:
    playerstring = '{uuid:'
    name = row[0]
    playerstring += (get_int_array(name) + ', count:[')
    row = row[1:]
    playerstring += (','.join(row) + ']}')
    playerdatalist.append(playerstring)

playerdata = '/data modify storage nyaatoken:reward playerdata set value [' + ','.join(playerdatalist) + ']\n'
file = open("result.txt", "a")
file.write(playerdata)
file.close()

os.system("pause")
