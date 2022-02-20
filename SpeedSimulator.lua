--// holy shit i fucking suck at scripting, synapse is sometimes too weak for this LMAOOO
--// Re-Execute the script when changing values (buggy)

getgenv().AutoFarmOrbs = true;
getgenv().AutoFarmGems = true;
getgenv().AutoRebirth = true;

cooldown = nil

--// AutoRebirth
coroutine.wrap(function()
while AutoRebirth == true do task.wait(cooldown)
    local RebirthArgs = {
        [1] = "rebirthRequest"
    }
    
    game:GetService("ReplicatedStorage").rEvents.rebirthEvent:FireServer(unpack(RebirthArgs))
 
end
end)()

coroutine.wrap(function()
while AutoFarmOrbs == true do task.wait(cooldown)
    
    local YellowOrbArgs = {
        [1] = "collectOrb",
        [2] = "Yellow Orb",
        [3] = "City"
    }
    local RedOrbArgs = {
        [1] = "collectOrb",
        [2] = "Red Orb",
        [3] = "City"
    }
    local BlueOrbArgs = {
        [1] = "collectOrb",
        [2] = "Blue Orb",
        [3] = "City"
    }
    
    for i=250,1,-1 do
    game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(BlueOrbArgs))
    game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(RedOrbArgs))
    game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(YellowOrbArgs))
    end

end
end)()

--// AutoFarmGems

coroutine.wrap(function()
while AutoFarmGems == true do task.wait(cooldown)
    local GemArgs = {
        [1] = "collectOrb",
        [2] = "Gem",
        [3] = "City"
    }
    
    game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(GemArgs))
    

end
end)()

