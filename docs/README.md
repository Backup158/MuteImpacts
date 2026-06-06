Remove sounds such as Psyker staff Primary Fire explosions and the plinking from doing no or reduced Damage against Carapace/Flak Armor. 
Uses the Audio plugin to mute the listed sounds. 

# Sound Options
Most sounds are silenced by default, and can be unsilenced in the Mod Options. Ones left alone by default are marked with a [*]
- Psyker staff Primary Fire impact
- Cracking from lasguns shooting nearby (with options for player and enemy shots)
- Melee hits
    - Doing no damage against Carapace
    - Hitting Carapace or Flak with various weapon types
    - Reduced damage with axe hits (Axes and Shovels)
    - Axe light attacks [*]
    - Axe heavy attacks [*]
- Ranged hits (each have options for Lasers and general shots)
    - Damage negated
    - Armored
    - Unarmored [*]
- UI Sounds
    - Entering NPC menu
    - Hadron trait edits
    - Hadron blessing edits
    - Hadron Consecration
    - Hadron Empowerment
- Player Coughs from Pox Gas

# Load Order
**DarktideLocalServer**

**Audio**

*whatever other Audio mods*

**MuteImpacts**

*whatever other Audio mods*

*whatever other mods*


# FAQ
**Why does this need to use the Audio Plugin?**

It's the simplest way to do it. AFAIK editing the weapon sounds directly (if that's even possible since they're in the weapon files with stats) would lead to autodefenestration. Perhaps there's a way to do it like ZipIt by finding the actual audio playing functions but I don't have much time to be digging that much nowadays.