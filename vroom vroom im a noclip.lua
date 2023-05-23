-- Noclip LocalScript

local player = game:GetService("Players").LocalPlayer

local noclipEnabled = true  -- Set to true to enable noclip on script execution

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

-- Connect to the RenderStepped event to continuously disable collisions

game:GetService("RunService").RenderStepped:Connect(disableCollisions)

