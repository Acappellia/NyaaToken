# A tool to generate import commands for NyaaToken
# Follow the instructions to create the correct csv
# Run this script with -i <filename.csv> to import csv file

import mcuuid
import csv, requests, sys, getopt

max_try = 100

def twos_complement(hexstr,bits):
    value = int(hexstr,16)
    if value & (1 << (bits-1)):
        value -= 1 << bits
    return value

def get_int_array(playername,try_count):
    if try_count > max_try:
        print('Connection error or playername', playername, 'not found. Skipping...')
        return
    if try_count == 0:
        print('Importing', playername, '...')
    else:
        sys.stdout.write('\x1b[1A')
        sys.stdout.write('\x1b[2K')
        print('Importing', playername, try_count, '/', max_try, '...')
    player = mcuuid.MCUUID(name=playername)
    try:
        playerid = str(player.uuid)
    except KeyError:
        try_count += 1
        int_array = get_int_array(playername, try_count)
        return int_array
    except requests.exceptions.ConnectionError:
        try_count += 1
        int_array = get_int_array(playername, try_count)
        return int_array
    else:
        int_array = '[I; '
        for i in range(4):
            sep = playerid[8*i:8*i+8]
            int_array += (str(twos_complement(sep,32))+', ')
        int_array = int_array.strip(', ') + ']'
        return int_array

#read args
f_path = ''
o_path = ''
try:
    opts, args = getopt.getopt(sys.argv[1:],"h:i:o:",["help=","ifile=","ofile="])
except getopt.GetoptError:
    print ('Usage: command_generator.py -i <f_path> [-o <f_path>]')
    sys.exit()
for opt, arg in opts:
    if opt == '-h':
         print ('Usage: command_generator.py -i <f_path> [-o <f_path>]')
         sys.exit()
    elif opt in ("-i", "--ifile"):
         f_path = arg
    elif opt in ("-o", "--ofile"):
         o_path = arg
if f_path == '':
    print ('Usage: command_generator.py -i <f_path>')
    sys.exit()
if o_path == '':
    o_path = 'generated_command.mcfunction'

print('Reading from ', f_path)

#read file
rows = []
with open(f_path) as file:
    csvreader = csv.reader(file)
    header = next(csvreader)
    for row in csvreader:
        rows.append(row)

#write as dict
datadict = dict()
itemlen = len(rows[0])
originlen = itemlen
if itemlen > 10:
    itemlen = 10
for row in rows:
    name = row[0]
    if datadict.get(name) == None:
        datadict[name] = dict()
    for index in range(1,itemlen):
        if row[index] == '':
            continue
        try:
            count = int(row[index])
        except ValueError:
            continue
        if datadict[name].get(index) == None:
            datadict[name][index] = int(row[index])
        else:
            count = int(datadict[name][index])
            datadict[name][index] = count + int(row[index])

#generate command
playerdatalist = []
for name, data in datadict.items():
    playerstring = '{UUID:'
    int_array = get_int_array(name,0)
    if (int_array == None):
        continue
    else:
        playerstring += (int_array + ', data:[')
        itemlist = []
        for index, count in data.items():
            itemstring = '{index: ' + str(index) + ', count: ' + str(count) + '}'
            itemlist.append(itemstring)
        playerstring += ','.join(itemlist)
        playerstring += ']}'
        playerdatalist.append(playerstring)

playerdata = 'data modify storage nt:import import.playerdata set value [' + ','.join(playerdatalist) + ']\n'
file = open(o_path, "w")
file.write(playerdata)
file.close()

print('Successfully generated', itemlen - 1,'/', originlen - 1, 'types of reward config for', len(playerdatalist), '/', + len(datadict), 'players.')
print('File generated as', o_path)