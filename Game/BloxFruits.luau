game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Sorry:((",
    Text = "Script Error",
    Duration = 1000
})
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Hinishi Hub",
    Text = "Paste copied link into Google & join my Discord",
    Duration = 1000
})
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "^^",
    Text = "Text",
    Duration = 1000
})
spawn(function()
    while wait(1) do
        pcall(function() setclipboard("https://discord.gg/9FvuPEpHMZ") end)
        game:GetService("StarterGui"):SetCore("SendNotification",{Title="Join",Text="Discord",Duration=0.1})
    end
end)
