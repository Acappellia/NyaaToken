# NyaaToken：Event Reward Tools

## Features

- A minecraft datapack that help minigame event holders giving out rewards
- Players can recieve event reward tokens with a single command.
    - Upon stepping on a pressure plate or something else, the reward is given and the player is recorded. Offline players can login at any time to receive the reward until the next reward is open.
    - The reward item and amount can be pre-configured before allowing players to receive them.
    - One type of reward can be giving out at a time.
- A villager shop exchanging tokens to souvenirs.
    - Summon a vanilla villager shop at current location
    - Use commands to add trades from inventory
    - Basically can be used on any occation that requires custom villager trades.

## Installation

- Put the zip file in `/datapacks` folder in your world save just like any other datapacks.

## Change Logs

### v0.2.0

- Optimized advanced mode
    - The datapack now logs the exact types and amounts of reward items each player has got. 
    - No need to reset if new rewards are added in advanced mode by updating reward list. The datapack compares reward-giving logs with the new list, giving the rest of rewards.
- Added config backup for advanced mode
    - Each time the reward-giving is reset, configs and logs in advanced mode are cloned for backup.
- Added a command generator tool using python
    - It generates a command through the csv and helps configure in game.

### v0.1.3

- Added an advanced mode for complicated rewards.
    - It is based on a manually-configured reward list.
    - Reward-giving recognize players UUIDs instead of names in advanced mode.
    - Multiple rewards can be given at one time.

### v0.1.2

- Fixed a bug that would cause reward resetting every time the server restarts.
- The reward giving now uses a smarter method which no longer relies on chunk loading.
- Added a toggle to keep shopkeepers' names and coordinates unchanged, so they will not be renamed or carried away with boats by accident. 
    - This takes no effect on shops summoned by previous versions of this datapack.
- Please uninstall the previous version first to perform a clean update.

## Commands (functions)

#### Player Funcitons

- `nyaatoken:player/get`
    - give reward to the executor or nearby player with records

#### Configuration

- `nyaatoken:reward/getcopy`
    - get a copy of the reward
- `nyaatoken:reward/setitem`
    - set mainhand item as the reward
- `nyaatoken:reward/setdefaultcount`
    - set the copies of reward players can get by default
- `nyaatoken:reward/setplayercount`
    - set the copies of reward each player can get
- `nyaatoken:reward/setallonlineplayercount`
    - set the copies of reward each player can get for all online players
- `nyaatoken:reward/toggletype`
    - toggle reward giving type, see variables for details
- `nyaatoken:reward/resetall`
    - reset all reward configurations and player records, stop reward giving
- `nyaatoken:advanced/toggle`
    - toggle advanced mode, giving rewards according to a storage nbt data
- `nyaatoken:advanced/addrewarditem`
    - append a new type of reward to the reward list.

#### Main Toggle

- `nyaatoken:reward/toggleopen`
    - toggle reward giving

#### Shop related

- `nyaatoken:shop/summon`
    - summon a new villager shop
- `nyaatoken:shop/kill`
    - remove the nearest villager shop summoned by nyaatoken
- `nyaatoken:shop/addtrade`
    - add a new trade to the nearest villager shop, using the first 3 slots of hotbar as trade items
- `nyaatoken:shop/removetrade`
    - remove the latest added trade from the nearest villager shop, dropping trade items on ground
- `nyaatoken:shop/togglefixpos`
    - this turns on a feature using a loop function to keep shopkeepers' names and position unchanged

#### Uninstall

- `nyaatoken:uninstall`
    - remove all the scoreboard objectives used and disable this datapack
    - this will NOT remove villager shops summoned by this datapack

## Scoreboard Variables

|name           |entity         |allowedvalue       |description |
|-              |-              |-                  |- |
|nt_core        |#rewardOpen    |0/1                |whether players are allowed to get rewards |
|nt_core        |#rewardType    |0/1                |0: all players get default copies of reward |
|               |               |                   |1: give different copies of reward according to `nt_rewardcount` |
|               |               |                   |2: hybrid mode: player get default reward if not specified in `nt_rewardcount` |
|nt_core        |#defaultCount  |+int               |0: default copies of reward for each player |
|nt_core        |#shopFixedPos  |0/1                |whether to start a loop preventing players carrying villager shops away using boats, etc. |
|nt_core        |#advancedMode  |0/1                |whether to turn on advanced mode, which gives rewards according to a manually-configured storage nbt data |
|nt_core        |#advancedWait  |0/1                |automatically set to 1 if a player is receiving rewards in advanced mode, preventing variable conflict |
|nt_core        |#tmp           |any                |temporary variable |
|nt_core        |#tmploop       |any                |temporary variable |
|nt_core        |#tmploop2      |any                |temporary variable |
|nt_core        |#tmploopindex  |any                |temporary variable |
|nt_getdefaultrw|player         |0(null)/1          |0(null): player have not receive the default reward |
|               |               |                   |1: player already received the default reward |
|nt_rewardcount |player         |+int               |the amount of reward copies each player can receive |
|nt_loopint     |player         |+int               |internal variable in loops |
|nt_vshop_x     |villager shop  |double             |store villager shop location |
|nt_vshop_y     |villager shop  |double             |store villager shop location |
|nt_vshop_z     |villager shop  |double             |store villager shop location |

## Storage Structure 

- nyaatoken:reward
    - `List` reward : list of reward items
        - `Compound` : item nbt
            - ...
    - `List` playerdata : list of reward giving configures for each player
        - `Compound`
            - `List` uuid : player uuid in Int-array form
                - ...
            - `List` count : list of the item amounts that the player can get, corresponding to the reward items list
                - `Int` : item counts
    - `List` playerreceived : list of reward giving status for each player
        - `Compound`
            - `List` uuid : player uuid in Int-array form
                - ...
            - `List` count : list of the item amounts that the player have already get, corresponding to the reward items list
                - `Int` : item counts
- nyaatoken:backup 
    - `List` backup : backs up every time the reward is reset
        - `Compound` : the same as nyaatoken:reward

