local AA = 35588119
local BB = game.Players.LocalPlayer 
if BB:IsInGroup(AA) then 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/DesrtKnock/DesrtKnock-X/refs/heads/main/XK.lua"))()
    else 
local LBLG = Instance.new("ScreenGui", game.CoreGui)
LBLG.Name = "LBLG"
LBLG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
LBLG.Enabled = true

local LBL = Instance.new("TextLabel", LBLG)
LBL.Name = "LBL"
LBL.BackgroundColor3 = Color3.new(0, 0, 0) 
LBL.BackgroundTransparency = 1
LBL.Position = UDim2.new(0.5, 0, 0.5, 0) 
LBL.Size = UDim2.new(0, 300, 0, 100) 
LBL.Font = Enum.Font.GothamSemibold
LBL.Text = "在 Roblox 主页点击更多，找到社区，点击社区，然后搜索在你粘贴板复制的东西，加入群组"
LBL.TextColor3 = Color3.new(1, 1, 1)
LBL.TextScaled = true
LBL.TextSize = 14
LBL.TextWrapped = true
LBL.Visible = true

local Heartbeat = game:GetService("RunService").Heartbeat
local LastIteration, Start = 0, tick()
local FrameUpdateTable = { }
local ColorIndex = 1 

local function HeartbeatUpdate()
    LastIteration = tick()
    for Index = #FrameUpdateTable, 1, -1 do
        FrameUpdateTable[Index + 1] = (FrameUpdateTable[Index] >= LastIteration - 1) and FrameUpdateTable[Index] or nil
    end
    FrameUpdateTable[1] = LastIteration
    local CurrentFPS = (tick() - Start >= 1 and #FrameUpdateTable) or (#FrameUpdateTable / (tick() - Start))
    CurrentFPS = CurrentFPS - CurrentFPS % 1

 
    local colors = {
        Color3.new(1, 0, 0),
        Color3.new(1, 1, 0),
        Color3.new(0, 1, 0),
        Color3.new(0, 0, 1),
        Color3.new(1, 0, 1),
        Color3.new(0, 1, 1),
        Color3.new(1, 1, 1),
    }
    LBL.TextColor3 = colors[ColorIndex]
    ColorIndex = ColorIndex + 1
    if ColorIndex > #colors then
        ColorIndex = 1
    end
end

Start = tick()
Heartbeat:Connect(HeartbeatUpdate)

wait(12)
  game.Players.LocalPlayer:Kick('请加入群组，已自动为您复制群组链接，请查看输入法粘贴板')
  setclipboard("群组名字XK AND XRX 工作室")
end