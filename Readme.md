# NyaaToken：Event Reward Tools

This datapack has been rewrite for newer versions of Minecraft (1.20.1+).

## Features

- A minecraft datapack that help minigame event holders giving out rewards
- Players can recieve event reward tokens with a single command.
    - Upon stepping on a pressure plate or something else, the reward items are given to player. Offline players can login at any time to receive the items.
    - The reward item and amount can be pre-configured before allowing players to receive them.
    - All data are recorded in storage and can be easily imported with an external tool and a single command.
- A villager shop exchanging tokens to souvenirs.
    - Summon a vanilla villager shop at current location
    - Use commands to add trades from inventory
    - Basically can be used on any occation that requires custom villager trades.

## Support Game Version

1.20.1 +

## Usage

#### Installation

- Put the datapack folder in `/datapacks` folder in your world save just like any other datapacks.
- OR, just `git clone` this repository in `/datapacks` directory in world save.

#### Datapack Update

- Replace the old files with the new ones, or use `git pull` in `/datapacks` directory in world save.
- Use `/reload` in game to load the new version.
- If NyaaToken below version `v2.0` has already been installed, uninstalling before update is suggested to prevent some potential conflicts. The uninstall command is `/function nyaatoken:uninstall` in previous versions.

#### Add a new reward

- Start a new form, record a list of players and the reward item count for each player. Save the form in `.csv` format.
- The form should have the following format:

|Name       |item A     |item B     |...    |
|-          |-          |-          |...    |
|PlayerA    |12         |48         |...    |
|PlayerB    |15         |96         |...    |
|...        |...        |...        |...    |

> NOTE: The player names can duplicate, all rows of a player will sum together. Up to 9 kinds of items can be added at once.

- Use the `command_generator.py` tool to generate a long command, which can import your form into Minecraft game.
- Log into your server, copy the generated command into a command block and activate it.
- Create the reward items ingame, like a souvenir token.
- Align the items in your horbar from slot 1 to 9 in the same order of your form (item count does not matter), and execute the command `/function nt:edit/addreward`
- Now the reward is added. Use `/function nt:maintogggle` to turn on player-receiving.

#### Setting the location for players to receive rewards

- Choose a location to place a command block.

> NOTE: The blocks above y=255 in the column of the command block should contain at least 2 continuous air blocks. This will happen in most cases, here is just a reminder because we need locations to place temporary shulker boxes

- Type `function nt:player/get` in command block
- Use `/function nt:maintogggle` to turn on the player-receiving feature
- Players can now activate this command block to get their rewards

#### Villager shop editing

- This is simple. Just refer to the `Command` section.

## Commands (functions)

#### Player Funcitons

- `nt:player/get`
    - give reward to the executor or nearby player with records

#### Configuration

- `nt:edit/addreward`
    - add a new type of reward
    - use hotbar items as the reward item
    - the reward data must be imported first
- `nt:edit/removereward`
    - delete the last added reward
- `nt:edit/removespecreward`
    - delete the reward specified by the scoreboard `#remove_ntid`
- `nt:edit/backupstorage`
    - backup the storage data
    - only ONE backup are stored
- `nt:edit/recoverstorage`
    - recover the storage data

#### Main Toggle

- `nt:maintoggle`
    - toggle reward giving

#### Shop related

- `nt:shop/summon`
    - summon a new villager shop
- `nt:shop/kill`
    - remove the nearest villager shop summoned by nyaatoken
- `nt:shop/addtrade`
    - add a new trade to the nearest villager shop, using the first 3 slots of hotbar as trade items
- `nt:shop/removetrade`
    - remove the latest added trade from the nearest villager shop, dropping trade items on ground

#### Uninstall

- `nt:uninstall`
    - all storage data will be backup
    - remove all the scoreboard objectives used and disable this datapack
    - this will NOT remove villager shops summoned by this datapack

#### Storage Structure 

- nt:reward
    - `List` items : list of reward items
        - `Compound`
            - `int` ntid : item id
            - `Compound` item : item compound
                - ...
    - `List` playerdata : list of reward giving configures for each player
        - `Compound`
            - `List` UUID : player uuid in Int-array form
                - ...
            - `List` data : list of reward data
                - `Compound`
                    - `int` ntid : item id correspounding to reward item list
                    - `int` count : amount of items that player should recieve
                    - `int` received : amount of items that player has already received
- nt:backup 
    - `Compound` backup : have the same structure as `nt:reward`
- nt:import
    - `Compound` import : the generated storage to be merged with current playerdata
        - `List` playerdata : list of reward giving configures for each player
            - `Compound`
                - `List` UUID : player uuid in Int-array form
                    - ...
                - `List` data : list of reward data
                    - `Compound`
                        - `int` index : index of item type in this import (1-9)
                        - `int` count : amount of items that player should recieve
- nt:tmp
    - `Compound` tmp : tmp storage
        


## Change Logs

### v2.0

- Complete rewrite for better performance & convenience
- Reward-giving now only has one mode. Reward data can be imported by external tools.
- Please uninstall the previous version first to perform a clean update.