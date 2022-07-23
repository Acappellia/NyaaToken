# NyaaToken：Event Reward Tools

**This datapack is not completed yet**

## Features

- A minecraft datapack that help minigame event holders giving out rewards
- Players can recieve event reward tokens with a single command.
    - Upon stepping on a pressure plate or something else, the reward is given and the player is recorded. Offline players can login at any time to receive the reward until the next reward is open.
    - The reward item and amount can be pre-configured before allowing players to receive them.
    - One type of reward can be giving out at a time.
- A villager shop exchanging tokens to souvenirs.
    - Use a command to summon a vanilla villager at current location, offering up to 12 trades copied from summoner's inventory slots.
    - Basically can be used on any occation that requires custom villager trades.

## Installation

- Put the zip file in `/datapacks` folder in your world save just like any other datapacks.

## Commands (functions)

#### Player Funcitons

- `nyaatoken:player/get`
    - give reward to the executor or nearby player with records

#### Admin Functions

- `nyaatoken:init`
- `nyaatoken:reward/getcopy`
    - get a copy of the reward
- `nyaatoken:reward/set`
    - set mainhand item as the reward
    - use this command at spawn to ensure the chunk is keep loaded
- `nyaatoken:reward/givetoall`
    - give the reward to all players, including offline ones
- `nyaatoken:reward/givetoallonline`
    - give the reward to all online players
- `nyaatoken:reward/toggleopen`
    - toggle reward giving
- `nyaatoken:reward/toggletype`
    - toggle reward giving type, see variables for more
- `nyaatoken:shop/summon`
    - summon a villager shop based on executor's inventory
- `nyaatoken:shop/remove`
    - remove the nearest villager shop summoned by nyaatoken

## Scoreboard Variables

|name           |entity         |allowedvalue       |description |
|-              |-              |-                  |- |
|nt_core        |#rewardOpen    |0/1                |whether players are allowed to get rewards |
|nt_core        |#tmp           |any                |temporary variable |
|               |               |                   |1: give different copies of reward according to `nt_rewardcount` |
|nt_core        |#rewardType    |0/1                |0: all players get the same thing, wont check `nt_rewardcount` |
|nt_haverw      |player         |0(null)/1          |(0)null: player have not receive the current reward |
|               |               |                   |1: player already received the current reward |
|nt_rewardcount |player         |+int               |the amount of reward copies each player can receive |