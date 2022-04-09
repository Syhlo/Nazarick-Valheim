# RequipMe

## Instantly re-equip from your tombstone! 

OK. You’ve died. It happens to us all. But that two-star that annihilated you is camping your tombstone. You don’t have time to leisurely dress – you need your armor and weapons – _NOW_!

RequipMe will automatically trigger when you’ve taken everything from your tombstone, instantly equipping your best armor, weapons and Megingjord to give you your best chance of survival.

If you haven’t taken everything from the tombstone, don’t worry. You can still trigger RequipMe with a keyboard shortcut, and it will equip you with the best of whatever is in your inventory at the time. 

Needless to say, even if you’re not in danger, RequipMe will save you the hassle of individually equipping each item.

You can prioritize the weapon type to equip. Select one-handed, two-handed and bow, in any order. RequipMe will find the best weapon of a type, in the order you specify. If it doesn’t find a weapon of the first type, it will move to the second, and if needed, the third. If it slots a one-handed weapon, RequipMe will also equip your best shield in your off-hand (if you have a shield in your inventory, of course)

## New

### 0.1.3

- Better compatibility with Extended Player Inventory
- Now calculates anticipated carry weight including Megingjord (if present) and allows instant re-equip on inventory weight totals between 300 and 450. _See **Megingjord** below_

## Configuration

### General

- **WeaponPriority**: The weapon types, in the order you want RequipMe to try to equip. A comma separated list of OneHanded, TwoHanded and Bow. The best shield (if it exists) will automatically be equipped along with a one-handed weapon. Default is: OneHanded,TwoHanded,Bow

- **EquipShortcut**: The keystroke to manually trigger RequipMe. Default is LeftAlt+Z

### In-game reconfiguration

You can use Configuration Manager (or similar) mod to change the configuration without exiting the game, and force RequipMe to update its configuration from the chat window (press Enter) then type:

    /requipme config 

You can also modify the weapon priority directly from the chat window using this syntax:

    /requipme weaponpriority=value

Example: To change the configured weapon priority to select two handed weapons first:

    /requipme weaponpriority=twohanded,onehanded,bow

## Compatibility issues & defects

- If you find a compatibility issue you can post it on NexusMods. Be sure to include the mod name and version you think may be incompatible.
- If you have a bug please report it on NexusMods. If you do post a bug report, please make sure to include the following:
    - Your version of Valheim
    - Your version of RequipMe
    - What you were doing, or attempting to do when it happened
    - If it's repeatable - i.e., can you duplicate it?
    - The exact behavior you observed (or didn't observe)
    - If possible, a capture of the log file with errors (errors always begin with "RequipMe ...")


## Megingjord

When 'taking all' from your tombstone, the basic Valheim game will calculate how many available slots you have, as well as **how much you can carry**. If taking the items in your tombstone exceeds the number of open inventory slots, or exceeds your maximum carry weight (300), the tombstone will not automatically 'collapse' (and RequipMe will not get triggered)

Valheim does not take into account **what you _could_ carry if you had Megingjord equipped**. Since RequipMe will auto-equip Megingjord (if you have one in the tombstone), it will now add the Megingjord bonus to the maximum carry weight (450), to allow the tombstone to 'collapse' and equip your items automatically.

Note that if you are encumbered when you died - regardless of whether you have Megingjord - taking all your items will still leave you encumbered, and RequipMe will not be triggered. You can still use LeftAlt-Z (or your configurd key) to equip all your items 'manually'.

## Notes

- RequipMe will select your weapons based on the actual damage you can deal with the weapon, using your current skill with the weapon type. Your skill with a weapon may allow for higher damage than a ‘better’ weapon that only has the potential for higher damage. 

- The highest-level armor of a lesser type may have a better armor value than the lowest-level of a greater type. e.g., level 4 leather vs. level 1 bronze. In this case the higher value (but lesser type) will be equipped by RequipMe.

- Shameless plugs for other mods: 

	- WolfPack. Control all your tame creatures at once! https://www.nexusmods.com/valheim/mods/1549/
    - UnRemove: Restore your destroyed pieces without rebuilding them... https://www.nexusmods.com/valheim/mods/1676
	- Reely SpecTackleLure: Fishing skill, fishing aids and deep-sea danger... https://www.nexusmods.com/valheim/mods/1655

- Your comments and feedback are always welcome. Please feel free to post or send a note on NexusMods.