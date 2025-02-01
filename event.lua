
function JoinNewEvent()
    if game.PlaceId ~= 8304191830 then
        return
    end

    local player = game.Players.LocalPlayer
    local path = player:WaitForChild("PlayerGui"):WaitForChild("ContractsUI"):WaitForChild("Main"):WaitForChild("Main")
    local scroll = path:WaitForChild("Frame"):WaitForChild("Outer"):WaitForChild("main"):WaitForChild("Scroll")

    local tierToEventID = {
        ["Tier: 2"] = "__EVENT_CONTRACT_Sakamoto:1",
        ["Tier: 5"] = "__EVENT_CONTRACT_Sakamoto:2",
        ["Tier: 6"] = "__EVENT_CONTRACT_Sakamoto:3",
        ["Tier: 9"] = "__EVENT_CONTRACT_Sakamoto:4",
        ["Tier: 10"] = "__EVENT_CONTRACT_Sakamoto:5",
        ["Tier: 16"] = "__EVENT_CONTRACT_Sakamoto:6"
    }

    local missionFrames = {}
    for _, child in ipairs(scroll:GetChildren()) do
        if child:IsA("Frame") and child.Name == "MissionFrame" then
            table.insert(missionFrames, child)
        end
    end

    local highestUnclearedTier = nil  -- Lưu tier cao nhất chưa clear
    local highestEventID = nil  -- ID của tier cao nhất chưa clear

    for _, missionFrame in ipairs(missionFrames) do
        local difficulty = missionFrame:FindFirstChild("Main") and missionFrame.Main:FindFirstChild("Difficulty")
        local cleared = missionFrame:FindFirstChild("Main") and missionFrame.Main:FindFirstChild("Cleared")

        local tierText = difficulty and difficulty:IsA("TextLabel") and difficulty.Text or "Tier: ???"

        local clearStatus = (cleared and cleared:IsA("GuiObject") and cleared.Visible) and "Yes" or "No"

        print(tierText .. " | Clear: " .. clearStatus)

        if getgenv().Config["Auto Join Tier"][tierText] then
            if clearStatus == "No" and tierToEventID[tierText] then
                local eventID = tierToEventID[tierText]
                
                if not highestUnclearedTier or tonumber(tierText:match("%d+")) > tonumber(highestUnclearedTier:match("%d+")) then
                    highestUnclearedTier = tierText
                    highestEventID = eventID
                end
            end
        else
            print(tierText .. " skipped (Auto Join disabled)")
        end
    end

    if highestUnclearedTier then
        print("[Bocchi World] Running matchmaking for " .. highestUnclearedTier .. " -> " .. highestEventID)
        
        local args = {
            [1] = highestEventID
        }
        
        game:GetService("ReplicatedStorage").endpoints.client_to_server.request_matchmaking:InvokeServer(unpack(args))
    else
        print("[Bocchi World] Clear all")
    end
end
JoinNewEvent()
