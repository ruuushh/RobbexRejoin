repeat wait() until game:IsLoaded()

getgenv().FocusWave = 5 -- Priority limit wave
getgenv().PriorityCards = { -- Priority tags when wave = FocusWave
    "+ Range I",
    "- Cooldown I",
    "+ Attack I",
    "+ Gain 2 Random Effects Tier 1",
    "- Cooldown II",
    "+ Range II",
    "+ Attack II",
    "+ Gain 2 Random Effects Tier 2",
    "- Cooldown III",
    "+ Range III",
    "+ Attack III",
    "+ Gain 2 Random Effects Tier 3"
}
getgenv().Cards = { -- All cards after FocusWave wave ends
    "+ Yen I",
    "+ Yen II",
    "+ Yen III",
    "+ Explosive Deaths I",
    "+ Explosive Deaths II",
    "+ Explosive Deaths III",
    "+ Gain 2 Random Curses Tier 3",
    "+ Gain 2 Random Curses Tier 2",
    "+ Gain 2 Random Curses Tier 1",
    "+ Enemy Shield III",
    "+ Enemy Shield II",
    "+ Enemy Shield I",
    "+ Boss Damage I",
    "+ Boss Damage II",
    "+ Boss Damage III",
    "+ Range I",
    "+ Cooldown I",
    "+ Attack I",
    "+ Gain 2 Random Effects Tier 1",
    "+ Cooldown II",
    "+ Attack II",
    "+ Gain 2 Random Effects Tier 2",
    "+ Cooldown III",
    "+ Range II",
    "+ Range III",
    "+ Attack III",
    "+ Gain 2 Random Effects Tier 3",
    "+ Enemy Regen I",
    "+ Enemy Regen II",
    "+ Enemy Regen III",
    "+ New Path"
}
-- Priority from bottom to top in all items
loadstring(game:HttpGet("https://raw.githubusercontent.com/Niga-Niga/scripts/refs/heads/main/pickcard.lua"))()
