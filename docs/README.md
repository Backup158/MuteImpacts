Remove sounds such as Psyker staff Primary Fire explosions, coughing from Pox gas, and the plinking from doing no or reduced Damage against Carapace/Flak Armor. 
Uses the Simple Audio or the Audio plugin to mute the listed sounds. 

# Sound Options
Most sounds are silenced by default, and can be unsilenced in the Mod Options. Sounds marked with a [*] are unsilenced by default.
## Psyker - Force Staff
- Primary Fire - Impact
- Primary Fire - Initial Woosh [*]
- Primary Fire - Projectile trail fizz [*]
- Voidstrike/Voidblast Staff alt fire blast [*]
- Inferno Staff shared burn [*]
- Inferno Staff left click stop [*]
- Inferno Staff right click additional [*]
## Psyker (Other)
- Warp Peril - Warning (50%) [*]
- Warp Peril - Critical (97%) [*]
- Force Sword Block and Brain Burst buzzing
## Skitarii
- Servo Skull charge up [*]
- Servo Skull shoot [*]
- Ability Discharge bzzt [*]
- Voltaic Emitter buzzing after using 2+ charges (Start and stop) [*]
- Integrated Refraction Emitter (Start) [*]
- Integrated Refraction Emitter (Stop) [*]
## Nearby Ranged Shots
- Nearby Lasgun Shot Crack (Player)
- Nearby Lasgun Shot Crack (Enemy Shooters)
- Nearby Lasgun Shot Crack (Enemy Captain)
- Bolter Flyby [*]
- Plasma Flyby (Shared with Skitarii Weapons) [*]
## Electrocution
- Lightning hit and miss
## Shock Maul Swing Effects
- Arbites Shock Maul Electric Swing on Miss
- Arbites Shock Maul Shocking Hit
## NPC UI
- Entering NPC menu
- Hadron trait edits
- Hadron blessing edits
- Hadron Consecration
- Hadron Empowerment
## Player Voice
- Player coughing from Pox Gas
## Melee Hits
- Doing no damage against Carapace
- Hitting a Bulwark Shield
- Hitting Carapace or Flak with various weapon types
- Reduced damage with axe hits (Axes and Shovels)
- Axe light attacks [*]
- Axe heavy attacks [*]
## Ranged Hits (each have options for Lasers and general shots)
- Damage negated
- Armored
- Unarmored [*]
## Miscellaneous
- UI Click [*]
- EVERYTHING [*]

Mod options are validated by the mod upon game start and closing the Mod Options menu. There are certain cases when combinations of settings can cause issues, which can be unintuitive to check.

# Load Order
If using Audio
> **DarktideLocalServer**  \
> **Audio**  \
> **MuteImpacts**  \
> *whatever other mods*

If using SimpleAudio
> **SimpleAudio**  \
> **MuteImpacts**  \
> *whatever other mods*

# FAQ
**Why does this need to use the Audio Plugin (or SimpleAudio)?**

It's the simplest way to do it. AFAIK having to edit each of the weapon sounds directly (if that's even possible since they're in the weapon files with stats) would lead to autodefenestration. Perhaps there's a way to do it like ZipIt by finding the actual audio playing functions but I don't have much time to be digging that much nowadays.

In any case, this structure makes it easy to add new sounds. You can even do it yourself by adding to `SoundsToMute.lua`.

Now, SimpleAudio has such a low performance impact that I have no problem always running it.