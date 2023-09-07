# A tool to generate import commands for NyaaToken
# Follow the instructions to create the correct csv
# Run this script with --<filename.csv> to import csv file
# TODO


import mcuuid
import numpy as np
import csv
import os
import json

def twos_complement(hexstr,bits):
    value = int(hexstr,16)
    if value & (1 << (bits-1)):
        value -= 1 << bits
    return value

def get_int_array(playername):
    print('importing ' + playername)
    player = mcuuid.MCUUID(name=playername)
    try:
        playerid = str(player.uuid)
    except json.decoder.JSONDecodeError:
        print('Found no player called ' + playername + ', skipping...')
        return
    else:
        int_array = '[I; '
        for i in range(4):
            sep = playerid[8*i:8*i+8]
            int_array += (str(twos_complement(sep,32))+', ')
        int_array = int_array.strip(', ') + ']'
        return int_array

f_path = "./rewarddata.csv"
print('Reading from ', f_path)

rows = []
with open(f_path) as file:
    csvreader = csv.reader(file)
    header = next(csvreader)
    for row in csvreader:
        rows.append(row)

playerdatalist = []
for row in rows:
    name = row[0]
    playerstring = '{uuid:'
    int_array = get_int_array(name)
    if (int_array == None):
        continue
    else:
        playerstring += (int_array + ', count:[')
        row = row[1:]
        playerstring += (','.join(row) + ']}')
        playerdatalist.append(playerstring)

playerdata = '/data modify storage nyaatoken:reward playerdata set value [' + ','.join(playerdatalist) + ']\n'
file = open("result.txt", "w")
file.write(playerdata)
file.close()

print('Successfully generated reward config for ' + str(len(playerdatalist)) + '/' + str(len(rows)) + ' players')
os.system("pause")
