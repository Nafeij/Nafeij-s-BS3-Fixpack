 1.1
 
    [FIXED] Mogun says a line that makes no sense if Hogun dies in Saga 1
    
    [FIXED] -WILL and -ARM per turn effects can cause willpower and armor stats to go negative. Fixed by adding Math.max cap in \engine\battle\entity\model\BattleEntity
    
    [FIXED] -WILL items can cause willpower to be 'lost' when using horn (The charge goes away but you get no WIL if it's above your "new max WIL"). Fixed by changing the getValue to getBase in \game\gui\HornHelper

 1.0 
 
    [FIXED] Ranged abilities being capped off by Exertion. So for instance Gunnulf can't use Rank 3 of Forge Ahead and Sparr cannot use max-range Insult if they only have 2 EXE.
    [FIXED] Survival finale cutscene and final scores not triggering properly
    [ADDED] Secret item from Yak's BS2 Fixpack included for continuity
   
------------------------------------------------------------------

Nafeij's BS3 Fixpack - version 1.0
[Works with the current version of Banner Saga 3, 2.61.04]


This corrects nasty bugs, inconsistencies and typos in the video game Banner Saga 3 by Stoic Studios.

Many thanks to:
Gestaltzerfall, who updated TBSDecompiler - http://www.mediafire.com/file/wun36alp6ojlkjk/TBS_Decompiler3.2.3.air/file
Psychic-Paranoia, bug-finder

Please report any bugs in Issues.

------------------------------------------------------------------
INSTALLATION:
    Select 'CODE > Download ZIP'. Uncompress the zip archive and place the /tbs3 folder in your "../steamapps/common" folder. It will ask you to overwrite some files.
    
UNINSTALLATION:
    Just delete the files and rename the backups OR verify the integrity of game files in Steam.
    
------------------------------------------------------------------

Mirrors -  | 
