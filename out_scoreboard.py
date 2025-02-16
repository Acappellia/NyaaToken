import nbtlib, csv

file_path = './scoreboard.dat'

nbt_file = nbtlib.load(file_path)

player_list = []

for entry in nbt_file['data']['PlayerScores']:
    if entry['Objective'] == 'event.orange_eat':
        player_list.append([entry['Name'],int(entry['Score'])])

with open('./output.csv', 'w') as csv_file:
    writer = csv.writer(csv_file)
    writer.writerows(player_list)