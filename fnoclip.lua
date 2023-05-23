-- Noclip LocalScript

local player = game:GetService("Players").LocalPlayer

local noclipEnabled = false  -- Set to false to disable noclip

-- Disable collisions for all parts of the character

local function disableCollisions()

    if noclipEnabled then

        local character = player.Character

        if character then

            for _, part in pairs(character:GetDescendants()) do

                if part:IsA("BasePart") then

                    part.CanCollide = false

                end

            end

        end

    end

end

-- Function to disable noclip

local function disableNoclip()

    noclipEnabled = false

    -- Re-enable collisions for all parts of the character

    local character = player.Character

    if character then

        for _, part in pairs(character:GetDescendants()) do

            if part:IsA("BasePart") then

                part.CanCollide = true

            end

        end

    end

end

-- Call the disableCollisions function once to disable collisions immediately

disableCollisions()

-- Call the disableNoclip function to disable noclip immediately

disableNoclip()

