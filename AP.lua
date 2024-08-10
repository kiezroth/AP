local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
function Teleport(teleportPlace)
        local player = game.Players.LocalPlayer
        player.Character.HumanoidRootPart.CFrame = teleportPlace
end

function Process()
    local POD = game:GetService("Workspace").FX:GetChildren()
        for _,child in pairs(POD) do
                local uid = string.match(child.Name,"(.*)Tier")
                if uid then
                    print(child)
                    Teleport(child.Prompt.CFrame)
                    wait(2)
                    game:GetService("VirtualInputManager"):SendKeyEvent(true,Enum.KeyCode.E,false,game) 
                    wait(5)
                    game:GetService("VirtualInputManager"):SendKeyEvent(true,Enum.KeyCode.E,false,game) 
                    wait(5)
                end
        end
end
wait(20)
for i = 1, 5 do
    Process()
    wait(5)
end
    