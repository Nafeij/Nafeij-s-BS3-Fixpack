# Nafeij's BS3 Fixpack - version 1.3

> for Banner Saga 3, Steam version 2.61.04 / GOG version 2.60.22

Nafeij's BS3 Fixpack is a legacy-support mod for Banner Saga 3.
The mod corrects bugs, inconsistencies and typos in the video game Banner Saga 3 by Stoic Studios. It also restores some never-before-seen cut-content and features various QoL improvements.

Many thanks to:
 - Gestaltzerfall, who updated TBSDecompiler - http://www.mediafire.com/file/wun36alp6ojlkjk/TBS_Decompiler3.2.3.air/file
 - Psychic-Paranoia, who helped find most of these bugs.

Please report any bugs in [Issues](../../issues).

# Installation

## Steam

1. Download the archive from [Releases](../../releases).
2. Uncompress the zip archive and place the `/tbs3` folder in your game folder (e.g. `.../steamapps/common`). It will ask you to overwrite some files.

## GOG

1. Follow the Steam installation steps above, but place only the **contents** of the `/tbs3` folder in your game folder (e.g. `.../steamapps/common`).
2. Additionally, download the archive `..._GOG.zip`, and patch this over the same files above.

## Mod-Enabler Integration

The root folders are structured to be compatible with mod-enablers like [OvGME](jweisner/ovgme) and [JSGME](https://www.subsim.com/radioroom/showthread.php?t=204594).

Simply place the extracted root folder (**NOT** the `/tbs3` folder) in the configuration mods folder (`/MODS` in JSGME) and load the mods into your game's root directory.


## To Uninstall

`Properties -> Verify the integrity of game files` in Steam or `Manage installation -> Verify / Repair...` in GOG.

# See also

- [Spare Some Love To Banner Saga 1](../../../YaK-s-SSLTBS1-Fixpack)
- [Drake's & YaK's Fixpack for BS2](../../../Drake-s-and-YaK-s-Unofficial-Fixpack-for-BS2)

# Release Notes

> ## 1.3
> 22 August 2024
> - Patched the game for 2.60.22 (GOG).

> ## 1.2
> 11 Dec 2023
> - Fixed various interactions and typos related to Rugga.

> ## 1.1
> 20 Feb 2023
> - Fixed bug where the skulker eggs thrown by barb hurlers would not spawn skulkers. The `_abl_hatch` ability was targeting the wrong entity (`ENEMY` instead of `OTHER`).
> - If one of your heroes with an item gets killed, and is possessed by Eyeless, defeating your hero grants you a duplicate of that item. The game also tags possesed entities with a unique `"POSSESSED"` tag, which can be checked in `engine\battle\entitiy\model\BattleEntity._handleDeath_pre` to prevent them from dropping their items.
> - The passive on all types of Dredge Hurlers, Distraught, isn't triggering properly. Apparently simply changing `responsePhase` to `POST_COMPLETE `in its corresponding entry in `_ability.index.json` is enought to fix this.
> - Juno dialogue branch in her history lesson was dropped in a previous version of the mod. This has been added back in.
> - Some characters may get obscured in conversations due to poor positioning. Manually repositioned several convos for this and stylistic purposes.
> - There were times at the start of battles where two lines of dialogue (the ones randomly assigned to characters) would both be spoken by the same person. This is now much less likely to happen.
> - Miscellaneous typos.
> - Swapped out Valgard with Folka (if she is alive) in the conversation before recovering Juno's body.
> - Extra chat with Eirik is he's present in Arberrang, which was cut from the base game.

> ## 1.0
> 17 May 2022
> - Ekkill's alive state is not properly imported from Saga 2, resulting in him being missing from certain conversations
> - Mogun says a line that makes no sense if Hogun dies in Saga 1, or if he hangs his axe in Saga 2.
> - -WILL items can cause willpower to be 'lost' when using horn (The charge goes away but you get no WIL if it's above your "new max WIL"). Fixed by changing the `getValue` to `getBase` in `\game\gui\HornHelper`
> - Sprites are positioned too high where it shows the Ravens walking atop the white tower
> - Bug in storyline where it doesn't say Iver and the Ravens return to Arberrang if Oddleif is dead.
> - Many, many typos and broken dialogue trees in conversations, popups and cutscene subtitles.
> - Ranged abilities being capped off by Exertion. So for instance Gunnulf can't use Rank 3 of Forge Ahead and Sparr cannot use max-range Insult if they only have 2 EXE.
> - Survival finale cutscene and final scores not triggering properly
> - Gave Stonesingers +1 range
> - Added several flags to unequip items when characters are removed from the roster.
> - Secret item from Yak's BS2 Fixpack included for continuity
