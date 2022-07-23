# NyaaToken：Event Rewards System

## Features

- A single command delivering token rewards to eligible players.
- A villager shop exchanging tokens to souvenirs.
    - Use a command to summon the villager at player location.
    - Villager trades are based on summoner's inventory.

## Commands

#### Player Commands

- nyaatoken:player/get
    - give reward to the executor or nearby player with records

#### Admin Commands

- nyaatoken:init
- nyaatoken:reward/getcopy
    - get a copy of the reward
- nyaatoken:reward/set
    - set mainhand item as the reward
    - use this command at spawn to ensure the chunk is keep loaded
- nyaatoken:reward/givetoall
    - give the reward to all players, including offline ones
- nyaatoken:reward/givetoallonline
    - give the reward to all online players
- nyaatoken:shop/summon
    - summon a villager shop based on executor's inventory
- nyaatoken:shop/remove
    - remove the nearest villager shop summoned by nyaatoken

## Scoreboard Variables

|name           |entity         |allowedvalue       |description |
|-              |-              |-                  |- |
|nt_core        |#rewardOpen    |0/1                |whether players are allowed to get rewards |
|nt_core        |#rewardType    |0/1                |0: all players get the same thing, wont check `nt_rewardcount` |
|               |               |                   |1: give different copies of reward according to `nt_rewardcount` |
|nt_haverw      |player         |0(null)/1          |(0)null: player have not receive the current reward |
|               |               |                   |1: player already received the current reward |
|nt_rewardcount |player         |+int               |the amount of reward copies each player can receive |