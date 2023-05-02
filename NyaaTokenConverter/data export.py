import mcuuid
import csv
import os
import tkinter as tk
from tkinter import filedialog

def get_player_name(int_array):
    str_32b = ''
    for uuid_int in int_array:
        str_32b = str_32b + format(int(uuid_int) & 0xffffffff, '032b')
    uuid_hex = '{:0>32x}'.format(int(str_32b, 2)).replace('0x', '')
    player = mcuuid.MCUUID(uuid=uuid_hex)
    return(player.name)

root = tk.Tk()
root.withdraw()
f_path = filedialog.askopenfilename(title='Choose data text file',initialdir='./')
print('Reading from ', f_path)

data = open(f_path).readline().replace('I; ','').lstrip('[{').rstrip('}]').split('}, {')
datarows = []
for player in data:
    newdata = player.lstrip('uuid: [').rstrip(']').split('], count: [')
    int_array = newdata[0].split(', ')
    playername = get_player_name(int_array)
    count = newdata[1].split(', ')
    newrow = [playername] + count
    datarows.append(newrow)

with open('exportdata.csv', 'w', newline='') as file:
    writer = csv.writer(file)
    writer.writerows(datarows)

os.system("pause")
