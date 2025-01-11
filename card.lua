-- credit : Bocchi World ( Do not Delete this line )
getgenv().FocusWave = 6 -- Priority limit wave
getgenv().PriorityCards = { -- Priority tags when wave = FocusWave
    "+ Range I",
    "+ Cooldown I",
    "+ Attack I",
    "+ Gain 2 Random Effects Tier 1",
    "+ Cooldown II",
    "+ Range II",
    "+ Attack II",
    "+ Gain 2 Random Effects Tier 2",
    "+ Cooldown III",
    "+ Range III",
    "+ Attack III",
    "+ Gain 2 Random Effects Tier 3"
}
getgenv().Cards = { -- All cards after FocusWave wave ends
    "- Enemy Health III",
    "- Enemy Health II",
    "- Enemy Health I",
    "- Boss Damage I",
    "- Boss Damage II",
    "- Boss Damage III",
    "- Yen I",
    "- Yen II",
    "- Yen III",
    "+ Gain 2 Random Curses Tier 3",
    "+ Gain 2 Random Curses Tier 2",
    "+ Gain 2 Random Curses Tier 1",
    "+ Explosive Deaths I",
    "+ Explosive Deaths II",
    "+ Explosive Deaths III",
    "+ Enemy Speed III",
    "+ Enemy Speed II",
    "+ Enemy Speed I",
    "+ Range I",
    "+ Cooldown I",
    "+ Attack I",
    "+ Gain 2 Random Effects Tier 1",
    "+ Cooldown II",
    "+ Attack II",
    "+ Gain 2 Random Effects Tier 2",
    "+ Cooldown III",
    "+ Enemy Shield I",
    "+ Enemy Regen I",
    "+ Enemy Shield II",
    "+ Enemy Regen II",
    "+ Range II",
    "+ Range III",
    "+ Attack III",
    "+ Gain 2 Random Effects Tier 3",
    "+ Enemy Shield III",
    "+ Enemy Regen III",
    "+ New Path"
}


local success1, errorMsg1 = pcall(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Bocchi-World/Bocchi-Main/refs/heads/main/pickcard.lua"))()
end)
if success1 then
    print("done")
else
    warn("false1")
end
local success2, errorMsg2 = pcall(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Ngducok/doing-some-shit/refs/heads/main/hey.lua"))()
end)
if success2 then
    print("done")
else
    warn("false2")
end
