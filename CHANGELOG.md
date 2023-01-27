# Release Notes
> ## 1.1
> 26 Jan 2023
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
