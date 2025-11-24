local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")

local player = Players.LocalPlayer

local MonologueUI = Instance.new("ScreenGui")
MonologueUI.Name = "MonologueUI"
MonologueUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
MonologueUI.Parent = player.PlayerGui

local MinimizedButton = Instance.new("TextButton")
MinimizedButton.Name = "MinimizedButton"
MinimizedButton.Size = UDim2.new(0, 40, 0, 40)
MinimizedButton.Position = UDim2.new(0, 10, 0, 10)
MinimizedButton.BackgroundColor3 = Color3.fromRGB(12, 12, 12)
MinimizedButton.BackgroundTransparency = 0.7
MinimizedButton.BorderSizePixel = 2
MinimizedButton.BorderColor3 = Color3.fromRGB(50, 50, 50)
MinimizedButton.Text = "M"
MinimizedButton.TextColor3 = Color3.fromRGB(230, 230, 230)
MinimizedButton.TextSize = 16
MinimizedButton.Font = Enum.Font.GothamBlack
MinimizedButton.Visible = false
MinimizedButton.Parent = MonologueUI

local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Size = UDim2.new(0, 500, 0, 300)
MainFrame.Position = UDim2.new(0.5, -250, 0.5, -150)
MainFrame.BackgroundColor3 = Color3.fromRGB(12, 12, 12)
MainFrame.BorderSizePixel = 2
MainFrame.BorderColor3 = Color3.fromRGB(50, 50, 50)
MainFrame.ClipsDescendants = true
MainFrame.Parent = MonologueUI

local Header = Instance.new("Frame")
Header.Name = "Header"
Header.Size = UDim2.new(1, 0, 0, 28)
Header.BackgroundColor3 = Color3.fromRGB(8, 8, 8)
Header.BorderSizePixel = 0
Header.Parent = MainFrame

local Title = Instance.new("TextLabel")
Title.Name = "Title"
Title.Size = UDim2.new(1, -60, 1, 0)
Title.Position = UDim2.new(0, 8, 0, 0)
Title.BackgroundTransparency = 1
Title.Text = "monologue | yufi"
Title.TextColor3 = Color3.fromRGB(230, 230, 230)
Title.TextSize = 13
Title.Font = Enum.Font.GothamBlack
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.Parent = Header

local MinimizeButton = Instance.new("TextButton")
MinimizeButton.Name = "MinimizeButton"
MinimizeButton.Size = UDim2.new(0, 22, 0, 22)
MinimizeButton.Position = UDim2.new(1, -50, 0, 3)
MinimizeButton.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
MinimizeButton.BorderSizePixel = 0
MinimizeButton.Text = "_"
MinimizeButton.TextColor3 = Color3.fromRGB(230, 230, 230)
MinimizeButton.TextSize = 14
MinimizeButton.Font = Enum.Font.GothamBold
MinimizeButton.Parent = Header

local CloseButton = Instance.new("TextButton")
CloseButton.Name = "CloseButton"
CloseButton.Size = UDim2.new(0, 22, 0, 22)
CloseButton.Position = UDim2.new(1, -24, 0, 3)
CloseButton.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
CloseButton.BorderSizePixel = 0
CloseButton.Text = "X"
CloseButton.TextColor3 = Color3.fromRGB(230, 230, 230)
CloseButton.TextSize = 12
CloseButton.Font = Enum.Font.GothamBold
CloseButton.Parent = Header

local ContentFrame = Instance.new("Frame")
ContentFrame.Name = "ContentFrame"
ContentFrame.Size = UDim2.new(1, -8, 1, -35)
ContentFrame.Position = UDim2.new(0, 4, 0, 30)
ContentFrame.BackgroundTransparency = 1
ContentFrame.Parent = MainFrame

local PlayerList = Instance.new("ScrollingFrame")
PlayerList.Name = "PlayerList"
PlayerList.Size = UDim2.new(0.4, 0, 1, 0)
PlayerList.Position = UDim2.new(0, 0, 0, 0)
PlayerList.BackgroundColor3 = Color3.fromRGB(8, 8, 8)
PlayerList.BorderSizePixel = 1
PlayerList.BorderColor3 = Color3.fromRGB(35, 35, 35)
PlayerList.ScrollBarThickness = 3
PlayerList.CanvasSize = UDim2.new(0, 0, 0, 0)
PlayerList.Parent = ContentFrame

local UIListLayout = Instance.new("UIListLayout")
UIListLayout.Padding = UDim.new(0, 3)
UIListLayout.Parent = PlayerList

local ConsoleFrame = Instance.new("Frame")
ConsoleFrame.Name = "ConsoleFrame"
ConsoleFrame.Size = UDim2.new(0.58, 0, 1, 0)
ConsoleFrame.Position = UDim2.new(0.42, 0, 0, 0)
ConsoleFrame.BackgroundColor3 = Color3.fromRGB(8, 8, 8)
ConsoleFrame.BorderSizePixel = 1
ConsoleFrame.BorderColor3 = Color3.fromRGB(35, 35, 35)
ConsoleFrame.Parent = ContentFrame

local ConsoleHeader = Instance.new("Frame")
ConsoleHeader.Name = "ConsoleHeader"
ConsoleHeader.Size = UDim2.new(1, 0, 0, 25)
ConsoleHeader.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
ConsoleHeader.BorderSizePixel = 0
ConsoleHeader.Parent = ConsoleFrame

local ConsoleTitle = Instance.new("TextLabel")
ConsoleTitle.Name = "ConsoleTitle"
ConsoleTitle.Size = UDim2.new(1, 0, 1, 0)
ConsoleTitle.BackgroundTransparency = 1
ConsoleTitle.Text = "CONSOLE - Select a Player"
ConsoleTitle.TextColor3 = Color3.fromRGB(200, 200, 200)
ConsoleTitle.TextSize = 11
ConsoleTitle.Font = Enum.Font.GothamBold
ConsoleTitle.Parent = ConsoleHeader

local ConsoleScroll = Instance.new("ScrollingFrame")
ConsoleScroll.Name = "ConsoleScroll"
ConsoleScroll.Size = UDim2.new(1, -6, 1, -31)
ConsoleScroll.Position = UDim2.new(0, 3, 0, 26)
ConsoleScroll.BackgroundColor3 = Color3.fromRGB(5, 5, 5)
ConsoleScroll.BorderSizePixel = 0
ConsoleScroll.ScrollBarThickness = 3
ConsoleScroll.CanvasSize = UDim2.new(0, 0, 0, 0)
ConsoleScroll.Parent = ConsoleFrame

local ConsoleLayout = Instance.new("UIListLayout")
ConsoleLayout.Parent = ConsoleScroll

local PlayerInfo = Instance.new("Frame")
PlayerInfo.Name = "PlayerInfo"
PlayerInfo.Size = UDim2.new(1, 0, 0, 80)
PlayerInfo.Position = UDim2.new(0, 0, 0, 0)
PlayerInfo.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
PlayerInfo.BorderSizePixel = 1
PlayerInfo.BorderColor3 = Color3.fromRGB(40, 40, 40)
PlayerInfo.Visible = false
PlayerInfo.Parent = ConsoleFrame

local AvatarFrame = Instance.new("Frame")
AvatarFrame.Name = "AvatarFrame"
AvatarFrame.Size = UDim2.new(0, 50, 0, 50)
AvatarFrame.Position = UDim2.new(0, 6, 0, 6)
AvatarFrame.BackgroundColor3 = Color3.fromRGB(8, 8, 8)
AvatarFrame.BorderSizePixel = 1
AvatarFrame.BorderColor3 = Color3.fromRGB(40, 40, 40)
AvatarFrame.Parent = PlayerInfo

local AvatarImage = Instance.new("ImageLabel")
AvatarImage.Name = "AvatarImage"
AvatarImage.Size = UDim2.new(1, -4, 1, -4)
AvatarImage.Position = UDim2.new(0, 2, 0, 2)
AvatarImage.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
AvatarImage.BorderSizePixel = 0
AvatarImage.Parent = AvatarFrame

local InfoFrame = Instance.new("Frame")
InfoFrame.Name = "InfoFrame"
InfoFrame.Size = UDim2.new(1, -68, 1, 0)
InfoFrame.Position = UDim2.new(0, 58, 0, 0)
InfoFrame.BackgroundTransparency = 1
InfoFrame.Parent = PlayerInfo

local PlayerNameLabel = Instance.new("TextLabel")
PlayerNameLabel.Name = "PlayerName"
PlayerNameLabel.Size = UDim2.new(1, 0, 0, 16)
PlayerNameLabel.Position = UDim2.new(0, 6, 0, 8)
PlayerNameLabel.BackgroundTransparency = 1
PlayerNameLabel.Text = "Player Name"
PlayerNameLabel.TextColor3 = Color3.fromRGB(230, 230, 230)
PlayerNameLabel.TextSize = 12
PlayerNameLabel.Font = Enum.Font.GothamBold
PlayerNameLabel.TextXAlignment = Enum.TextXAlignment.Left
PlayerNameLabel.Parent = InfoFrame

local AccountAge = Instance.new("TextLabel")
AccountAge.Name = "AccountAge"
AccountAge.Size = UDim2.new(1, 0, 0, 12)
AccountAge.Position = UDim2.new(0, 6, 0, 26)
AccountAge.BackgroundTransparency = 1
AccountAge.Text = "Age: Loading..."
AccountAge.TextColor3 = Color3.fromRGB(180, 180, 180)
AccountAge.TextSize = 9
AccountAge.Font = Enum.Font.Gotham
AccountAge.TextXAlignment = Enum.TextXAlignment.Left
AccountAge.Parent = InfoFrame

local UserId = Instance.new("TextLabel")
UserId.Name = "UserId"
UserId.Size = UDim2.new(0.5, 0, 0, 12)
UserId.Position = UDim2.new(0, 6, 0, 40)
UserId.BackgroundTransparency = 1
UserId.Text = "ID: 0"
UserId.TextColor3 = Color3.fromRGB(180, 180, 180)
UserId.TextSize = 9
UserId.Font = Enum.Font.Gotham
UserId.TextXAlignment = Enum.TextXAlignment.Left
UserId.Parent = InfoFrame

local DetectionCount = Instance.new("TextLabel")
DetectionCount.Name = "DetectionCount"
DetectionCount.Size = UDim2.new(0.5, 0, 0, 12)
DetectionCount.Position = UDim2.new(0.5, 0, 0, 40)
DetectionCount.BackgroundTransparency = 1
DetectionCount.Text = "Detections: 0"
DetectionCount.TextColor3 = Color3.fromRGB(180, 180, 180)
DetectionCount.TextSize = 9
DetectionCount.Font = Enum.Font.Gotham
DetectionCount.TextXAlignment = Enum.TextXAlignment.Left
DetectionCount.Parent = InfoFrame

local StatusInfo = Instance.new("TextLabel")
StatusInfo.Name = "StatusInfo"
StatusInfo.Size = UDim2.new(1, 0, 0, 14)
StatusInfo.Position = UDim2.new(0, 6, 0, 56)
StatusInfo.BackgroundTransparency = 1
StatusInfo.Text = "Status: SAFE"
StatusInfo.TextColor3 = Color3.fromRGB(120, 255, 120)
StatusInfo.TextSize = 10
StatusInfo.Font = Enum.Font.GothamBold
StatusInfo.TextXAlignment = Enum.TextXAlignment.Left
StatusInfo.Parent = InfoFrame

local PlayerData = {}
local Dragging = false
local DragStart, StartPos
local SelectedPlayer = nil

local VELOCITY_THRESHOLD = 56
local CFRAME_CHANGE_THRESHOLD = 45
local CHECK_INTERVAL = 0.1

local function TweenObject(obj, properties, duration)
    local tweenInfo = TweenInfo.new(duration, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    local tween = TweenService:Create(obj, tweenInfo, properties)
    tween:Play()
    return tween
end

local function MinimizeUI()
    MainFrame.Visible = false
    MinimizedButton.Visible = true
end

local function MaximizeUI()
    MainFrame.Visible = true
    MinimizedButton.Visible = false
end

local function UpdatePlayerListSize()
    local count = 0
    for _, child in ipairs(PlayerList:GetChildren()) do
        if child:IsA("TextButton") then
            count = count + 1
        end
    end
    PlayerList.CanvasSize = UDim2.new(0, 0, 0, math.max(0, count * 36))
end

local function UpdateConsoleSize()
    local count = 0
    for _, child in ipairs(ConsoleScroll:GetChildren()) do
        if child:IsA("TextLabel") then
            count = count + 1
        end
    end
    ConsoleScroll.CanvasSize = UDim2.new(0, 0, 0, math.max(0, count * 18))
end

local function ClearConsole()
    for _, child in ipairs(ConsoleScroll:GetChildren()) do
        if child:IsA("TextLabel") then
            child:Destroy()
        end
    end
end

local function CreatePlayerEntry(targetPlayer)
    local PlayerEntry = Instance.new("TextButton")
    PlayerEntry.Name = targetPlayer.Name
    PlayerEntry.Size = UDim2.new(1, 0, 0, 34)
    PlayerEntry.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
    PlayerEntry.BorderSizePixel = 1
    PlayerEntry.BorderColor3 = Color3.fromRGB(40, 40, 40)
    PlayerEntry.AutoButtonColor = false
    PlayerEntry.Text = ""
    PlayerEntry.Parent = PlayerList

    local PlayerName = Instance.new("TextLabel")
    PlayerName.Name = "PlayerName"
    PlayerName.Size = UDim2.new(0.65, 0, 1, 0)
    PlayerName.Position = UDim2.new(0, 8, 0, 0)
    PlayerName.BackgroundTransparency = 1
    PlayerName.Text = targetPlayer.Name
    PlayerName.TextColor3 = Color3.fromRGB(230, 230, 230)
    PlayerName.TextSize = 12
    PlayerName.Font = Enum.Font.GothamSemibold
    PlayerName.TextXAlignment = Enum.TextXAlignment.Left
    PlayerName.Parent = PlayerEntry

    local Status = Instance.new("TextLabel")
    Status.Name = "Status"
    Status.Size = UDim2.new(0.35, -8, 1, 0)
    Status.Position = UDim2.new(0.65, 0, 0, 0)
    Status.BackgroundTransparency = 1
    Status.Text = "SAFE"
    Status.TextColor3 = Color3.fromRGB(120, 255, 120)
    Status.TextSize = 11
    Status.Font = Enum.Font.GothamBold
    Status.TextXAlignment = Enum.TextXAlignment.Right
    Status.Parent = PlayerEntry

    PlayerData[targetPlayer] = {
        Entry = PlayerEntry,
        Status = Status,
        Logs = {},
        LastPosition = nil,
        LastCheck = os.clock(),
        SafeChecks = 0,
        TotalDetections = 0,
        AccountAge = nil,
        VelocityDetected = false,
        CFrameDetected = false,
        FakeLagDetected = 0,
        CurrentStatus = "SAFE"
    }

    spawn(function()
        local success, age = pcall(function()
            return targetPlayer.AccountAge
        end)
        if success and age then
            local years = math.floor(age / 365)
            local days = age % 365
            PlayerData[targetPlayer].AccountAge = years .. "y " .. days .. "d"
        else
            PlayerData[targetPlayer].AccountAge = "Unknown"
        end
    end)

    UpdatePlayerListSize()

    local function SelectPlayer()
        if SelectedPlayer == targetPlayer then return end
        
        if SelectedPlayer then
            local prevData = PlayerData[SelectedPlayer]
            if prevData then
                TweenObject(prevData.Entry, {BackgroundColor3 = Color3.fromRGB(18, 18, 18)}, 0.2)
            end
        end
        
        SelectedPlayer = targetPlayer
        TweenObject(PlayerEntry, {BackgroundColor3 = Color3.fromRGB(30, 30, 30)}, 0.2)
        
        PlayerInfo.Visible = true
        PlayerNameLabel.Text = targetPlayer.Name
        UserId.Text = "ID: " .. targetPlayer.UserId
        DetectionCount.Text = "Detections: " .. PlayerData[targetPlayer].TotalDetections
        StatusInfo.Text = "Status: " .. PlayerData[targetPlayer].CurrentStatus
        AvatarImage.Image = "rbxthumb://type=AvatarHeadShot&id=" .. targetPlayer.UserId .. "&w=150&h=150"
        
        if PlayerData[targetPlayer].AccountAge then
            AccountAge.Text = "Age: " .. PlayerData[targetPlayer].AccountAge
        else
            AccountAge.Text = "Age: Loading..."
        end
        
        TweenObject(ConsoleScroll, {Position = UDim2.new(0, 3, 0, 86), Size = UDim2.new(1, -6, 1, -91)}, 0.3)
        ClearConsole()
        
        for _, log in ipairs(PlayerData[targetPlayer].Logs) do
            local LogLabel = Instance.new("TextLabel")
            LogLabel.Size = UDim2.new(1, -4, 0, 16)
            LogLabel.BackgroundTransparency = 1
            LogLabel.Text = string.format("[%s] > %s", log.Time, log.Message)
            
            if log.Type == "VELOCITY" then
                LogLabel.TextColor3 = Color3.fromRGB(255, 100, 100)
            elseif log.Type == "CFRAME" then
                LogLabel.TextColor3 = Color3.fromRGB(255, 170, 60)
            elseif log.Type == "FAKELAG" then
                LogLabel.TextColor3 = Color3.fromRGB(255, 255, 100)
            else
                LogLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
            end
            
            LogLabel.TextSize = 9
            LogLabel.Font = Enum.Font.Gotham
            LogLabel.TextXAlignment = Enum.TextXAlignment.Left
            LogLabel.TextTruncate = Enum.TextTruncate.AtEnd
            LogLabel.Parent = ConsoleScroll
        end
        UpdateConsoleSize()
        ConsoleScroll.CanvasPosition = Vector2.new(0, ConsoleScroll.CanvasSize.Y.Offset)
    end

    PlayerEntry.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            TweenObject(PlayerEntry, {BackgroundColor3 = Color3.fromRGB(25, 25, 25)}, 0.1)
            SelectPlayer()
        end
    end)

    PlayerEntry.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            if SelectedPlayer ~= targetPlayer then
                TweenObject(PlayerEntry, {BackgroundColor3 = Color3.fromRGB(18, 18, 18)}, 0.2)
            end
        end
    end)
end

local function AddLog(targetPlayer, logType, message)
    local data = PlayerData[targetPlayer]
    if not data then return end

    local timestamp = os.date("%H:%M:%S")
    local logEntry = {
        Type = logType,
        Message = message,
        Time = timestamp
    }
    
    table.insert(data.Logs, logEntry)
    data.TotalDetections = data.TotalDetections + 1
    
    if SelectedPlayer == targetPlayer then
        DetectionCount.Text = "Detections: " .. data.TotalDetections
        
        local LogLabel = Instance.new("TextLabel")
        LogLabel.Size = UDim2.new(1, -4, 0, 16)
        LogLabel.BackgroundTransparency = 1
        LogLabel.Text = string.format("[%s] > %s", timestamp, message)
        
        if logType == "VELOCITY" then
            LogLabel.TextColor3 = Color3.fromRGB(255, 100, 100)
        elseif logType == "CFRAME" then
            LogLabel.TextColor3 = Color3.fromRGB(255, 170, 60)
        elseif logType == "FAKELAG" then
            LogLabel.TextColor3 = Color3.fromRGB(255, 255, 100)
        else
            LogLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
        end
        
        LogLabel.TextSize = 9
        LogLabel.Font = Enum.Font.Gotham
        LogLabel.TextXAlignment = Enum.TextXAlignment.Left
        LogLabel.TextTruncate = Enum.TextTruncate.AtEnd
        LogLabel.Parent = ConsoleScroll
        
        UpdateConsoleSize()
        wait(0.1)
        ConsoleScroll.CanvasPosition = Vector2.new(0, ConsoleScroll.CanvasSize.Y.Offset)
    end
end

local function UpdatePlayerStatus(targetPlayer, detectionType)
    local data = PlayerData[targetPlayer]
    if not data then return end

    if detectionType then
        data.CurrentStatus = detectionType
        data.Status.Text = detectionType
        data.Status.TextColor3 = Color3.fromRGB(255, 80, 80)
        TweenObject(data.Entry, {BackgroundColor3 = Color3.fromRGB(30, 15, 15)}, 0.3)
        
        if SelectedPlayer == targetPlayer then
            StatusInfo.Text = "Status: " .. detectionType
            StatusInfo.TextColor3 = Color3.fromRGB(255, 80, 80)
        end
    else
        data.CurrentStatus = "SAFE"
        data.Status.Text = "SAFE"
        data.Status.TextColor3 = Color3.fromRGB(120, 255, 120)
        if SelectedPlayer == targetPlayer then
            StatusInfo.Text = "Status: SAFE"
            StatusInfo.TextColor3 = Color3.fromRGB(120, 255, 120)
        end
        if SelectedPlayer ~= targetPlayer then
            TweenObject(data.Entry, {BackgroundColor3 = Color3.fromRGB(18, 18, 18)}, 0.3)
        end
    end
end

local function CheckPlayer(targetPlayer)
    local character = targetPlayer.Character
    if not character then return end
    
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    local rootPart = character:FindFirstChild("HumanoidRootPart")
    
    if not humanoid or not rootPart or humanoid.Health <= 0 then return end
    
    local data = PlayerData[targetPlayer]
    if not data then return end

    local currentTime = os.clock()
    local deltaTime = currentTime - data.LastCheck
    
    if deltaTime >= CHECK_INTERVAL then
        local currentVelocity = rootPart.Velocity.Magnitude
        local currentPosition = rootPart.Position
        
        local positionChange = 0
        if data.LastPosition then
            positionChange = (currentPosition - data.LastPosition).Magnitude
        end
        
        local expectedChange = currentVelocity * deltaTime
        local discrepancy = math.abs(positionChange - expectedChange)
        
        local isVelocitySuspicious = currentVelocity > VELOCITY_THRESHOLD
        local isCFrameSuspicious = discrepancy > CFRAME_CHANGE_THRESHOLD
        
        if isVelocitySuspicious or isCFrameSuspicious then
            local detectionType = isVelocitySuspicious and "VELOCITY" or "CFRAME"
            AddLog(targetPlayer, detectionType, string.format("%s (Vel: %.1f, Change: %.1f)", detectionType, currentVelocity, discrepancy))
            UpdatePlayerStatus(targetPlayer, detectionType)
            data.SafeChecks = 0
            
            if isVelocitySuspicious then
                data.VelocityDetected = true
            else
                data.CFrameDetected = true
            end
        else
            data.SafeChecks = data.SafeChecks + 1
            if data.SafeChecks >= 3 then
                UpdatePlayerStatus(targetPlayer, nil)
                data.VelocityDetected = false
                data.CFrameDetected = false
            end
        end
        
        data.LastPosition = currentPosition
        data.LastCheck = currentTime
    end
end

local HeaderDragging = false
local HeaderDragStart, HeaderStartPos

Header.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        HeaderDragging = true
        HeaderDragStart = input.Position
        HeaderStartPos = MainFrame.Position
        TweenObject(Header, {BackgroundColor3 = Color3.fromRGB(12, 12, 12)}, 0.1)
    end
end)

Header.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        HeaderDragging = false
        TweenObject(Header, {BackgroundColor3 = Color3.fromRGB(8, 8, 8)}, 0.2)
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if HeaderDragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
        local delta = input.Position - HeaderDragStart
        MainFrame.Position = UDim2.new(HeaderStartPos.X.Scale, HeaderStartPos.X.Offset + delta.X, HeaderStartPos.Y.Scale, HeaderStartPos.Y.Offset + delta.Y)
    end
end)

local MinimizedDragging = false
local MinimizedDragStart, MinimizedStartPos

MinimizedButton.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        MinimizedDragging = true
        MinimizedDragStart = input.Position
        MinimizedStartPos = MinimizedButton.Position
        TweenObject(MinimizedButton, {BackgroundTransparency = 0.5}, 0.1)
    end
end)

MinimizedButton.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        MinimizedDragging = false
        TweenObject(MinimizedButton, {BackgroundTransparency = 0.7}, 0.2)
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if MinimizedDragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
        local delta = input.Position - MinimizedDragStart
        MinimizedButton.Position = UDim2.new(MinimizedStartPos.X.Scale, MinimizedStartPos.X.Offset + delta.X, MinimizedStartPos.Y.Scale, MinimizedStartPos.Y.Offset + delta.Y)
    end
end)

MinimizeButton.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        TweenObject(MinimizeButton, {BackgroundColor3 = Color3.fromRGB(50, 50, 50)}, 0.1)
    end
end)

MinimizeButton.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        TweenObject(MinimizeButton, {BackgroundColor3 = Color3.fromRGB(35, 35, 35)}, 0.2)
        MinimizeUI()
    end
end)

MinimizedButton.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        TweenObject(MinimizedButton, {BackgroundTransparency = 0.5}, 0.1)
    end
end)

MinimizedButton.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        TweenObject(MinimizedButton, {BackgroundTransparency = 0.7}, 0.2)
        MaximizeUI()
    end
end)

CloseButton.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        TweenObject(CloseButton, {BackgroundColor3 = Color3.fromRGB(50, 50, 50)}, 0.1)
    end
end)

CloseButton.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        TweenObject(CloseButton, {BackgroundColor3 = Color3.fromRGB(35, 35, 35)}, 0.2)
        MonologueUI.Enabled = not MonologueUI.Enabled
    end
end)

PlayerList.ChildAdded:Connect(UpdatePlayerListSize)
PlayerList.ChildRemoved:Connect(UpdatePlayerListSize)

for _, targetPlayer in ipairs(Players:GetPlayers()) do
    if targetPlayer ~= player then
        CreatePlayerEntry(targetPlayer)
    end
end

Players.PlayerAdded:Connect(function(targetPlayer)
    if targetPlayer ~= player then
        wait(2)
        CreatePlayerEntry(targetPlayer)
    end
end)

Players.PlayerRemoving:Connect(function(targetPlayer)
    if PlayerData[targetPlayer] then
        if SelectedPlayer == targetPlayer then
            SelectedPlayer = nil
            PlayerInfo.Visible = false
            TweenObject(ConsoleScroll, {Position = UDim2.new(0, 3, 0, 26), Size = UDim2.new(1, -6, 1, -31)}, 0.3)
        end
        PlayerData[targetPlayer].Entry:Destroy()
        PlayerData[targetPlayer] = nil
    end
end)

RunService.Heartbeat:Connect(function()
    for targetPlayer, data in pairs(PlayerData) do
        if targetPlayer ~= player and targetPlayer.Character then
            CheckPlayer(targetPlayer)
        end
    end
end)

local function HandleResize()
    if UserInputService.TouchEnabled then
        MainFrame.Size = UDim2.new(0.9, 0, 0.8, 0)
        MainFrame.Position = UDim2.new(0.05, 0, 0.1, 0)
        MinimizedButton.Size = UDim2.new(0, 50, 0, 50)
    else
        MainFrame.Size = UDim2.new(0, 500, 0, 300)
        MainFrame.Position = UDim2.new(0.5, -250, 0.5, -150)
        MinimizedButton.Size = UDim2.new(0, 40, 0, 40)
    end
end

HandleResize()
UserInputService:GetPropertyChangedSignal("TouchEnabled"):Connect(HandleResize)

MonologueUI.DisplayOrder = 999
