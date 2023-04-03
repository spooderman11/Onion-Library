-- // Onion Lib (Orion V2) - By: TheRealNinjagoat \\ --

--// Services
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")


--// Vars
local LocalPlayer = Players.LocalPlayer

--// lib init
local lib = {}
lib.__index = lib

--// util
function Tween(obj, props)
    local tween = TweenService:Create(obj, TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut), props)
    tween:Play()
end

function Tween2(obj, props)
    local tween = TweenService:Create(obj, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut), props)
    tween:Play()
end

function AddDragging(frame)
    local dragging
    local dragInput
    local dragStart
    local startPos

    local function update(input)
        local delta = input.Position - dragStart
        frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end

    frame.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = frame.Position

            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)

    frame.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)

    UserInputService.InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            update(input)
        end
    end)
end

function getHeadshotasRBXImage(player)
    local headshot = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. player.UserId .. "&width=420&height=420&format=png"
    local headshotrbx = "rbxthumb://type=AvatarHeadShot&id=" .. player.UserId .. "&w=420&h=420"
    return headshotrbx
end

--// lib functions
function lib:Window(Info)
    Info = Info or {}
    Info.Name = Info.Name or "Onion Library"


    local Onion = Instance.new("ScreenGui")
    local Main = Instance.new("Frame")
    local UICorner = Instance.new("UICorner")
    local Top = Instance.new("Frame")
    local UICorner_2 = Instance.new("UICorner")
    local TopStroke = Instance.new("Frame")
    local Librarytitle = Instance.new("TextLabel")
    local TabHolder = Instance.new("Frame")
    local SideStroke = Instance.new("Frame")
    local UserInformation = Instance.new("Frame")
    local UIFO_Corner = Instance.new("UICorner")
    local UifoStroke = Instance.new("Frame")
    local Disp = Instance.new("TextLabel")
    local Avatae = Instance.new("ImageLabel")
    local UICorner_3 = Instance.new("UICorner")
    local Rank = Instance.new("TextLabel")
    local UICorner_4 = Instance.new("UICorner")
    local tabsHolder = Instance.new("ScrollingFrame")
    local UIListLayout = Instance.new("UIListLayout")
    local Tabfix = Instance.new("Frame")

    local PageHolder = Instance.new("Frame")
    local Pages = Instance.new("Folder")

    Onion.Name = "Onion"
    Onion.Parent = (game:GetService("CoreGui") or gethui())

    Main.Name = "Main"
    Main.Parent = Onion
    Main.AnchorPoint = Vector2.new(0.5, 0.5)
    Main.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
    Main.Position = UDim2.new(0.499692887, 0, 0.5, 0)
    Main.Size = UDim2.new(0, 636, 0, 353)

    UICorner.CornerRadius = UDim.new(0, 5)
    UICorner.Parent = Main

    Top.Name = "Top"
    Top.Parent = Main
    Top.AnchorPoint = Vector2.new(0.5, 0.5)
    Top.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
    Top.Position = UDim2.new(0.499606907, 0, 0.069483079, 0)
    Top.Size = UDim2.new(0, 636, 0, 51)

    UICorner_2.CornerRadius = UDim.new(0, 5)
    UICorner_2.Parent = Top

    TopStroke.Name = "TopStroke"
    TopStroke.Parent = Top
    TopStroke.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TopStroke.BackgroundTransparency = 0.800
    TopStroke.BorderSizePixel = 0
    TopStroke.Position = UDim2.new(0, 0, 1, -2)
    TopStroke.Size = UDim2.new(0, 636, 0, 1)

    Librarytitle.Name = "Librarytitle"
    Librarytitle.Parent = Top
    Librarytitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Librarytitle.BackgroundTransparency = 1.000
    Librarytitle.Position = UDim2.new(0.030683361, 0, 0.333333343, 0)
    Librarytitle.Size = UDim2.new(0, 511, 0, 17)
    Librarytitle.Font = Enum.Font.GothamBold
    Librarytitle.Text = Info.Name
    Librarytitle.TextColor3 = Color3.fromRGB(255, 255, 255)
    Librarytitle.TextScaled = true
    Librarytitle.TextSize = 14.000
    Librarytitle.TextWrapped = true
    Librarytitle.TextXAlignment = Enum.TextXAlignment.Left

    TabHolder.Name = "TabHolder"
    TabHolder.Parent = Main
    TabHolder.AnchorPoint = Vector2.new(0.5, 0.5)
    TabHolder.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
    TabHolder.Position = UDim2.new(0.123840041, 0, 0.570888698, 0)
    TabHolder.Size = UDim2.new(0, 158, 0, 302)

    SideStroke.Name = "SideStroke"
    SideStroke.Parent = TabHolder
    SideStroke.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    SideStroke.BackgroundTransparency = 0.800
    SideStroke.BorderSizePixel = 0
    SideStroke.Position = UDim2.new(1, 0, -0.00826551393, 0)
    SideStroke.Size = UDim2.new(0, 1, 0, 304)

    UserInformation.Name = "UserInformation"
    UserInformation.Parent = TabHolder
    UserInformation.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    UserInformation.Position = UDim2.new(0, 0, 0.844370782, 0)
    UserInformation.Size = UDim2.new(0, 158, 0, 47)

    UIFO_Corner.CornerRadius = UDim.new(0, 5)
    UIFO_Corner.Name = "UIFO_Corner"
    UIFO_Corner.Parent = UserInformation

    UifoStroke.Name = "UifoStroke"
    UifoStroke.Parent = UserInformation
    UifoStroke.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UifoStroke.BackgroundTransparency = 0.800
    UifoStroke.BorderSizePixel = 0
    UifoStroke.Position = UDim2.new(0, 0, 0.0196080208, -2)
    UifoStroke.Size = UDim2.new(0, 159, 0, 1)

    Disp.Name = "Disp"
    Disp.Parent = UserInformation
    Disp.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Disp.BackgroundTransparency = 1.000
    Disp.Position = UDim2.new(0.281247884, 0, 0.218727931, 0)
    Disp.Size = UDim2.new(0, 104, 0, 12)
    Disp.Font = Enum.Font.GothamMedium
    Disp.Text = game.Players.LocalPlayer.DisplayName
    Disp.TextColor3 = Color3.fromRGB(255, 255, 255)
    Disp.TextScaled = true
    Disp.TextSize = 14.000
    Disp.TextWrapped = true
    Disp.TextXAlignment = Enum.TextXAlignment.Left

    Avatae.Name = "Avatae"
    Avatae.Parent = UserInformation
    Avatae.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Avatae.BackgroundTransparency = 1.000
    Avatae.Position = UDim2.new(0.0505552664, 0, 0.133621544, 0)
    Avatae.Size = UDim2.new(0, 34, 0, 34)
    Avatae.Image = getHeadshotasRBXImage(game.Players.LocalPlayer)

    UICorner_3.CornerRadius = UDim.new(0, 200)
    UICorner_3.Parent = Avatae

    Rank.Name = "Rank"
    Rank.Parent = UserInformation
    Rank.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Rank.BackgroundTransparency = 1.000
    Rank.Position = UDim2.new(0.294999987, 0, 0.495000005, 0)
    Rank.Size = UDim2.new(0, 104, 0, 11)
    Rank.Font = Enum.Font.GothamBold
    Rank.Text = "Owner"
    Rank.TextColor3 = Color3.fromRGB(191, 191, 191)
    Rank.TextScaled = true
    Rank.TextSize = 14.000
    Rank.TextWrapped = true
    Rank.TextXAlignment = Enum.TextXAlignment.Left

    UICorner_4.CornerRadius = UDim.new(0, 5)
    UICorner_4.Parent = TabHolder

    tabsHolder.Name = "tabsHolder"
    tabsHolder.Parent = TabHolder
    tabsHolder.Active = true
    tabsHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    tabsHolder.BackgroundTransparency = 1.000
    tabsHolder.BorderSizePixel = 0
    tabsHolder.Size = UDim2.new(0, 158, 0, 254)
    tabsHolder.ScrollBarThickness = 1

    UIListLayout.Parent = tabsHolder
    UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.Padding = UDim.new(0, 6)

    Tabfix.Name = "Tabfix"
    Tabfix.Parent = tabsHolder
    Tabfix.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Tabfix.BackgroundTransparency = 1.000
    Tabfix.Position = UDim2.new(0.594936728, 0, -1.20147945e-07, 0)
    Tabfix.Size = UDim2.new(0, 6, 0, 6)

    PageHolder.Name = "PageHolder"
    PageHolder.Parent = Main
    PageHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    PageHolder.BackgroundTransparency = 1.000
    PageHolder.Position = UDim2.new(0.248427674, 0, 0.141643062, 0)
    PageHolder.Size = UDim2.new(0, 478, 0, 302)

    Pages.Name = "Pages"
    Pages.Parent = PageHolder

    tabsHolder.CanvasSize = UDim2.new(0, 0, 0, UIListLayout.AbsoluteContentSize.Y)
    tabsHolder.ChildAdded:Connect(function()
        tabsHolder.CanvasSize = UDim2.new(0, 0, 0, UIListLayout.AbsoluteContentSize.Y + 6)
    end)

    AddDragging(Main)

    local tabSys = {}

    function tabSys:Tab(Info)
        Info = Info or {}
        Info.Name = Info.Name or "Tab"
        Info.Icon = Info.Icon or "rbxassetid://0"

        local Tab = Instance.new("TextButton")
        local UICorner_5 = Instance.new("UICorner")
        local TabImage = Instance.new("ImageLabel")
        local TextLabel = Instance.new("TextLabel")
        local UIStroke = Instance.new("UIStroke")

        local Page = Instance.new("ScrollingFrame")
        local pageLayout = Instance.new("UIListLayout")
        local Fixer = Instance.new("Frame")

        Tab.Name = "Tab"
        Tab.Parent = tabsHolder
        Tab.AnchorPoint = Vector2.new(0.5, 0.5)
        Tab.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
        Tab.Position = UDim2.new(-0.716641903, 0, 0.0834016129, 0)
        Tab.Size = UDim2.new(0, 140, 0, 30)
        Tab.Font = Enum.Font.SourceSans
        Tab.TextColor3 = Color3.fromRGB(0, 0, 0)
        Tab.TextSize = 14.000
        Tab.TextTransparency = 1.000
        Tab.AutoButtonColor = false

        UICorner_5.CornerRadius = UDim.new(0, 3)
        UICorner_5.Parent = Tab

        TabImage.Name = "TabImage"
        TabImage.Parent = Tab
        TabImage.BackgroundColor3 = Color3.fromRGB(168, 168, 168)
        TabImage.BackgroundTransparency = 1.000
        TabImage.Position = UDim2.new(0.0718571469, 0, 0.261619061, 0)
        TabImage.Size = UDim2.new(0, 14, 0, 14)
        TabImage.Image = Info.Icon

        TextLabel.Parent = Tab
        TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel.BackgroundTransparency = 1.000
        TextLabel.Position = UDim2.new(0.224285841, 0, 0.325111389, 0)
        TextLabel.Size = UDim2.new(0, 98, 0, 11)
        TextLabel.Font = Enum.Font.GothamMedium
        TextLabel.Text = Info.Name
        TextLabel.TextColor3 = Color3.fromRGB(168, 168, 168)
        TextLabel.TextScaled = true
        TextLabel.TextSize = 14.000
        TextLabel.TextWrapped = true
        TextLabel.TextXAlignment = Enum.TextXAlignment.Left

        UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        UIStroke.Color = Color3.fromRGB(55, 55, 55)
        UIStroke.Parent = Tab

        Page.Name = "Page"
        Page.Parent = Pages
        Page.Active = true
        Page.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Page.BackgroundTransparency = 1.000
        Page.BorderSizePixel = 0
        Page.Position = UDim2.new(0.00159470306, 0, 0.00173414627, 0)
        Page.Size = UDim2.new(0, 476, 0, 302)
        Page.ScrollBarThickness = 1
        Page.Visible = false

        pageLayout.Name = "pageLayout"
        pageLayout.Parent = Page
        pageLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
        pageLayout.SortOrder = Enum.SortOrder.LayoutOrder
        pageLayout.Padding = UDim.new(0, 6)

        Fixer.Name = "Fixer"
        Fixer.Parent = Page
        Fixer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Fixer.BackgroundTransparency = 2.000
        Fixer.Position = UDim2.new(0.394957989, 0, -1.01051583e-07, 0)
        Fixer.Size = UDim2.new(0, 100, 0, 0)

        Page.CanvasSize = UDim2.new(0, 0, 0, pageLayout.AbsoluteContentSize.Y)
        Page.ChildAdded:Connect(function()
            Page.CanvasSize = UDim2.new(0, 0, 0, pageLayout.AbsoluteContentSize.Y + 150)
        end)

        Tab.MouseEnter:Connect(function()
            Tween(Tab, {BackgroundColor3 = Color3.fromRGB(25, 25, 25)})
            Tween(UIStroke, {Color = Color3.fromRGB(48, 48, 48)})
        end)

        Tab.MouseLeave:Connect(function()
            Tween(Tab, {BackgroundColor3 = Color3.fromRGB(30, 30, 30)})
            Tween(UIStroke, {Color = Color3.fromRGB(55, 55, 55)})
        end)

        Tab.MouseButton1Click:Connect(function()
            for i,v in pairs(Pages:GetChildren()) do
                if v:IsA("ScrollingFrame") then
                    v.Visible = false
                end
            end

            for i,v in pairs(tabsHolder:GetChildren()) do
                if v:IsA("TextButton") and v ~= Tab then
                    Tween(v.TextLabel, {TextColor3 = Color3.fromRGB(168, 168, 168)})
                    Tween(v.TabImage, {ImageColor3 = Color3.fromRGB(168, 168, 168)})
                end
            end

            Page.Visible = true
            TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
            TabImage.ImageColor3 = Color3.fromRGB(255, 255, 255)
        end)

        local elements = {}
        elements.__index = elements

        function elements:Button(Info)
            Info = Info or {}
            Info.Name = Info.Name or "Button"
            Info.Callback = Info.Callback or function() end

            local Button = Instance.new("Frame")
            local BTN_Corner = Instance.new("UICorner")
            local BTN_Text = Instance.new("TextLabel")
            local BTN_Stroke = Instance.new("UIStroke")
            local BTN_Image = Instance.new("ImageLabel")
            local BTN_ClickRadius = Instance.new("TextButton")

            Button.Name = "Button"
            Button.Parent = Page
            Button.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
            Button.Position = UDim2.new(-0.357142866, 0, 0.0546356589, 0)
            Button.Size = UDim2.new(0, 464, 0, 39)

            BTN_Corner.CornerRadius = UDim.new(0, 3)
            BTN_Corner.Name = "BTN_Corner"
            BTN_Corner.Parent = Button

            BTN_Text.Name = "BTN_Text"
            BTN_Text.Parent = Button
            BTN_Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            BTN_Text.BackgroundTransparency = 1.000
            BTN_Text.Position = UDim2.new(0.0173893627, 0, 0.350752622, 0)
            BTN_Text.Size = UDim2.new(0, 333, 0, 14)
            BTN_Text.Font = Enum.Font.GothamBold
            BTN_Text.Text = Info.Name
            BTN_Text.TextColor3 = Color3.fromRGB(238, 238, 238)
            BTN_Text.TextScaled = true
            BTN_Text.TextSize = 14.000
            BTN_Text.TextWrapped = true
            BTN_Text.TextXAlignment = Enum.TextXAlignment.Left

            BTN_Stroke.Color = Color3.fromRGB(55, 55, 55)
            BTN_Stroke.Parent = Button
            BTN_Stroke.Name = "BTN_Stroke"

            BTN_Image.Name = "BTN_Image"
            BTN_Image.Parent = Button
            BTN_Image.BackgroundColor3 = Color3.fromRGB(168, 168, 168)
            BTN_Image.BackgroundTransparency = 1.000
            BTN_Image.Position = UDim2.new(0.923150182, 0, 0.184695989, 0)
            BTN_Image.Size = UDim2.new(0, 24, 0, 24)
            BTN_Image.Image = "rbxassetid://12977945341"
            BTN_Image.ImageColor3 = Color3.fromRGB(213, 213, 213)

            BTN_ClickRadius.Name = "BTN_ClickRadius"
            BTN_ClickRadius.Parent = Button
            BTN_ClickRadius.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            BTN_ClickRadius.BackgroundTransparency = 1.000
            BTN_ClickRadius.Size = UDim2.new(0, 464, 0, 39)
            BTN_ClickRadius.Font = Enum.Font.SourceSans
            BTN_ClickRadius.Text = ""
            BTN_ClickRadius.TextColor3 = Color3.fromRGB(0, 0, 0)
            BTN_ClickRadius.TextSize = 14.000

            BTN_ClickRadius.MouseEnter:Connect(function()
                Tween(Button, {BackgroundColor3 = Color3.fromRGB(25, 25, 25)})
                Tween(BTN_Stroke, {Color = Color3.fromRGB(48, 48, 48)})
            end)

            BTN_ClickRadius.MouseLeave:Connect(function()
                Tween(Button, {BackgroundColor3 = Color3.fromRGB(30, 30, 30)})
                Tween(BTN_Stroke, {Color = Color3.fromRGB(55, 55, 55)})
            end)

            BTN_ClickRadius.MouseButton1Down:Connect(function()
                Tween(Button, {BackgroundColor3 = Color3.fromRGB(20, 20, 20)})
                Tween(BTN_Stroke, {Color = Color3.fromRGB(38, 38, 38)})
            end)

            BTN_ClickRadius.MouseButton1Up:Connect(function()
                Tween(Button, {BackgroundColor3 = Color3.fromRGB(30, 30, 30)})
                Tween(BTN_Stroke, {Color = Color3.fromRGB(55, 55, 55)})
            end)

            BTN_ClickRadius.MouseButton1Click:Connect(function()
                Info.Callback()
            end)
        end

        function elements:Toggle(Info)
            Info = Info or {}
            Info.Name = Info.Name or "Toggle"
            Info.Callback = Info.Callback or function() end
            Info.State = Info.State or false


            local Toggle = Instance.new("Frame")
            local TGL_Corner = Instance.new("UICorner")
            local TGL_Title = Instance.new("TextLabel")
            local TGL_Stroke = Instance.new("UIStroke")
            local TGL_Holder = Instance.new("Frame")
            local TGLH_Corner = Instance.new("UICorner")
            local TGLH_Stroke = Instance.new("UIStroke")
            local TGLG_Knob = Instance.new("Frame")
            local TGL_KNB_Corner = Instance.new("UICorner")
            local TGL_ClickRadius = Instance.new("TextButton")

            Toggle.Name = "Toggle"
            Toggle.Parent = Page
            Toggle.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
            Toggle.Position = UDim2.new(-0.357142866, 0, 0.0546356589, 0)
            Toggle.Size = UDim2.new(0, 464, 0, 39)

            TGL_Corner.CornerRadius = UDim.new(0, 3)
            TGL_Corner.Name = "TGL_Corner"
            TGL_Corner.Parent = Toggle

            TGL_Title.Name = "TGL_Title"
            TGL_Title.Parent = Toggle
            TGL_Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TGL_Title.BackgroundTransparency = 1.000
            TGL_Title.Position = UDim2.new(0.0173893627, 0, 0.350752622, 0)
            TGL_Title.Size = UDim2.new(0, 333, 0, 14)
            TGL_Title.Font = Enum.Font.GothamBold
            TGL_Title.Text = "Toggle"
            TGL_Title.TextColor3 = Color3.fromRGB(238, 238, 238)
            TGL_Title.TextScaled = true
            TGL_Title.TextSize = 14.000
            TGL_Title.TextWrapped = true
            TGL_Title.TextXAlignment = Enum.TextXAlignment.Left

            TGL_Stroke.Color = Color3.fromRGB(55, 55, 55)
            TGL_Stroke.Parent = Toggle
            TGL_Stroke.Name = "TGL_Stroke"

            TGL_Holder.Name = "TGL_Holder"
            TGL_Holder.Parent = Toggle
            TGL_Holder.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
            TGL_Holder.Position = UDim2.new(0.879999995, 0, 0.306171119, 0)
            TGL_Holder.Size = UDim2.new(0, 44, 0, 19)

            TGLH_Corner.CornerRadius = UDim.new(10, 10)
            TGLH_Corner.Name = "TGLH_Corner"
            TGLH_Corner.Parent = TGL_Holder

            TGLH_Stroke.Color = Color3.fromRGB(55, 55, 55)
            TGLH_Stroke.Parent = TGL_Holder
            TGLH_Stroke.Name = "TGLH_Stroke"

            TGLG_Knob.Name = "TGLG_Knob"
            TGLG_Knob.Parent = TGL_Holder
            TGLG_Knob.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
            TGLG_Knob.Position = UDim2.new(0.129999995, 0, 0.171000004, 0)
            TGLG_Knob.Size = UDim2.new(0, 12, 0, 12)

            TGL_KNB_Corner.CornerRadius = UDim.new(10, 10)
            TGL_KNB_Corner.Name = "TGL_KNB_Corner"
            TGL_KNB_Corner.Parent = TGLG_Knob

            TGL_ClickRadius.Name = "TGL_ClickRadius"
            TGL_ClickRadius.Parent = Toggle
            TGL_ClickRadius.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TGL_ClickRadius.BackgroundTransparency = 1.000
            TGL_ClickRadius.Size = UDim2.new(0, 464, 0, 39)
            TGL_ClickRadius.Font = Enum.Font.SourceSans
            TGL_ClickRadius.Text = ""
            TGL_ClickRadius.TextColor3 = Color3.fromRGB(0, 0, 0)
            TGL_ClickRadius.TextSize = 14.000

            TGL_ClickRadius.MouseEnter:Connect(function()
                Tween(Toggle, {BackgroundColor3 = Color3.fromRGB(25, 25, 25)})
                Tween(TGL_Stroke, {Color = Color3.fromRGB(38, 38, 38)})
            end)

            TGL_ClickRadius.MouseLeave:Connect(function()
                Tween(Toggle, {BackgroundColor3 = Color3.fromRGB(30, 30, 30)})
                Tween(TGL_Stroke, {Color = Color3.fromRGB(55, 55, 55)})
            end)

            TGL_ClickRadius.MouseButton1Click:Connect(function()
                Info.State = not Info.State
                Info.Callback(Info.State)
                if Info.State then
                    Tween2(TGLG_Knob, {Position = UDim2.new(0.56, 0, 0.171000004, 0)})
                    Tween2(TGL_Holder, {BackgroundColor3 = Color3.fromRGB(255, 255, 255)})
                else
                    Tween2(TGLG_Knob, {Position = UDim2.new(0.129999995, 0, 0.171000004, 0)})
                    Tween2(TGL_Holder, {BackgroundColor3 = Color3.fromRGB(25, 25, 25)})
                end
            end)
        end

        function elements:Slider(Info)
            Info = Info or {}
            Info.Name = Info.Name or "Slider"
            Info.Min = Info.Min or 0
            Info.Max = Info.Max or 100
            Info.Default = Info.Default or 0
            Info.Increment = Info.Increment or 1
            Info.IncValue = "Bananas"
            Info.Callback = Info.Callback or function() end


            local Slider = Instance.new("Frame")
            local SLDR_Corner = Instance.new("UICorner")
            local SLDR_Title = Instance.new("TextLabel")
            local SLDR_Stroke = Instance.new("UIStroke")
            local SLDR_HoldBar = Instance.new("Frame")
            local SLDRHLDR_Corner = Instance.new("UICorner")
            local SLDRHLDR_Status = Instance.new("TextLabel")
            local SLDRHLDR_Stroke = Instance.new("UIStroke")
            local SliderAdjust = Instance.new("TextButton")
            local SLDR_A_Corner = Instance.new("UICorner")
            local SLDR_ClickRadius = Instance.new("TextButton")


            Slider.Name = "Slider"
            Slider.Parent = Page
            Slider.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
            Slider.Position = UDim2.new(0.0126050422, 0, 0.31788069, 0)
            Slider.Size = UDim2.new(0, 464, 0, 69)

            SLDR_Corner.CornerRadius = UDim.new(0, 3)
            SLDR_Corner.Name = "SLDR_Corner"
            SLDR_Corner.Parent = Slider

            SLDR_Title.Name = "SLDR_Title"
            SLDR_Title.Parent = Slider
            SLDR_Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            SLDR_Title.BackgroundTransparency = 1.000
            SLDR_Title.Position = UDim2.new(0.0173893627, 0, 0.176839575, 0)
            SLDR_Title.Size = UDim2.new(0, 333, 0, 14)
            SLDR_Title.Font = Enum.Font.GothamBold
            SLDR_Title.Text = Info.Name
            SLDR_Title.TextColor3 = Color3.fromRGB(238, 238, 238)
            SLDR_Title.TextScaled = true
            SLDR_Title.TextSize = 14.000
            SLDR_Title.TextWrapped = true
            SLDR_Title.TextXAlignment = Enum.TextXAlignment.Left

            SLDR_Stroke.Color = Color3.fromRGB(55, 55, 55)
            SLDR_Stroke.Parent = Slider
            SLDR_Stroke.Name = "SLDR_Stroke"

            SLDR_HoldBar.Name = "SLDR_HoldBar"
            SLDR_HoldBar.Parent = Slider
            SLDR_HoldBar.BackgroundColor3 = Color3.fromRGB(37, 51, 46)
            SLDR_HoldBar.Position = UDim2.new(0.0147602474, 0, 0.491793871, 0)
            SLDR_HoldBar.Size = UDim2.new(0, 452, 0, 29)

            SLDRHLDR_Corner.CornerRadius = UDim.new(0, 3)
            SLDRHLDR_Corner.Name = "SLDRHLDR_Corner"
            SLDRHLDR_Corner.Parent = SLDR_HoldBar

            SLDRHLDR_Status.Name = "SLDRHLDR_Status"
            SLDRHLDR_Status.Parent = SLDR_HoldBar
            SLDRHLDR_Status.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            SLDRHLDR_Status.BackgroundTransparency = 1.000
            SLDRHLDR_Status.Position = UDim2.new(0.0173893441, 0, 0.245805442, 0)
            SLDRHLDR_Status.Size = UDim2.new(0, 333, 0, 13)
            SLDRHLDR_Status.ZIndex = 2
            SLDRHLDR_Status.Font = Enum.Font.GothamBold
            SLDRHLDR_Status.Text = Info.Value .. "/" .. Info.Max .. " " .. Info.IncValue
            SLDRHLDR_Status.TextColor3 = Color3.fromRGB(221, 221, 221)
            SLDRHLDR_Status.TextScaled = true
            SLDRHLDR_Status.TextSize = 14.000
            SLDRHLDR_Status.TextWrapped = true
            SLDRHLDR_Status.TextXAlignment = Enum.TextXAlignment.Left

            SLDRHLDR_Stroke.Color = Color3.fromRGB(15, 149, 100)
            SLDRHLDR_Stroke.Parent = SLDR_HoldBar
            SLDRHLDR_Stroke.Name = "SLDRHLDR_Stroke"

            SliderAdjust.Name = "SliderAdjust"
            SliderAdjust.Parent = SLDR_HoldBar
            SliderAdjust.AnchorPoint = Vector2.new(0, 0.5)
            SliderAdjust.BackgroundColor3 = Color3.fromRGB(15, 149, 100)
            SliderAdjust.Position = UDim2.new(0.00100000005, 0, 0.467999995, 0)
            SliderAdjust.Size = UDim2.new(0, 318, 0, 30)
            SliderAdjust.Font = Enum.Font.SourceSans
            SliderAdjust.Text = ""
            SliderAdjust.TextColor3 = Color3.fromRGB(0, 0, 0)
            SliderAdjust.TextSize = 14.000
            SliderAdjust.AutoButtonColor = false

            SLDR_A_Corner.CornerRadius = UDim.new(0, 3)
            SLDR_A_Corner.Name = "SLDR_A_Corner"
            SLDR_A_Corner.Parent = SliderAdjust

            SLDR_ClickRadius.Name = "SLDR_ClickRadius"
            SLDR_ClickRadius.Parent = Slider
            SLDR_ClickRadius.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            SLDR_ClickRadius.BackgroundTransparency = 1.000
            SLDR_ClickRadius.Size = UDim2.new(0, 464, 0, 69)
            SLDR_ClickRadius.Font = Enum.Font.SourceSans
            SLDR_ClickRadius.Text = ""
            SLDR_ClickRadius.TextColor3 = Color3.fromRGB(0, 0, 0)
            SLDR_ClickRadius.TextSize = 14.000
            SLDR_ClickRadius.ZIndex = -1


            SLDR_ClickRadius.MouseEnter:Connect(function()
                Tween(Slider, {BackgroundColor3 = Color3.fromRGB(25, 25, 25)})
                Tween(SLDR_Stroke, {Color = Color3.fromRGB(38, 38, 38)})
            end)

            SLDR_ClickRadius.MouseLeave:Connect(function()
                Tween(Slider, {BackgroundColor3 = Color3.fromRGB(30, 30, 30)})
                Tween(SLDR_Stroke, {Color = Color3.fromRGB(55, 55, 55)})
            end)

            dragging = false

            SliderAdjust.MouseButton1Down:Connect(function()
                dragging = true
            end)

            game:GetService("UserInputService").InputEnded:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                    dragging = false
                end
            end)

            game:GetService("UserInputService").InputChanged:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseMovement and dragging then
                    local Increment = Info.Increment
                    local Max = Info.Max
                    local Min = Info.Min
                    local Value = Info.Value
                    local Mouse = UserInputService:GetMouseLocation()
            
                    local percent = math.clamp((Mouse.X - Slider.AbsolutePosition.X) / Slider.AbsoluteSize.X, 0, 1)
                    local newValue = math.floor(percent * (Max - Min) / Increment + 0.5) * Increment + Min
            
                    if newValue ~= Value then
                        Info.Value = newValue
                        SLDRHLDR_Status.Text = Info.Value .. "/" .. Info.Max .. " " .. Info.IncValue
                        local newWidth = (Info.Value / Info.Max) * 452
                        if newWidth < 13 then
                            newWidth = 13
                        end
                        SliderAdjust.Size = UDim2.new(0, newWidth, 0, 30)
                        Info.Callback(Info.Value)
                    end
                end
            end)
        end

        function elements:Label(Info)
            Info = Info or {}
            Info.Name = Info.Name or "Label"

            local Label = Instance.new("Frame")
            local LBL_Corner = Instance.new("UICorner")
            local LBL_Txt = Instance.new("TextLabel")
            local LBL_Stroke = Instance.new("UIStroke")


            Label.Name = "Label"
            Label.Parent = Page
            Label.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
            Label.Position = UDim2.new(-0.357142866, 0, 0.0546356589, 0)
            Label.Size = UDim2.new(0, 464, 0, 39)

            LBL_Corner.CornerRadius = UDim.new(0, 3)
            LBL_Corner.Name = "LBL_Corner"
            LBL_Corner.Parent = Label

            LBL_Txt.Name = "LBL_Txt"
            LBL_Txt.Parent = Label
            LBL_Txt.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            LBL_Txt.BackgroundTransparency = 1.000
            LBL_Txt.Position = UDim2.new(0.0173893627, 0, 0.350752622, 0)
            LBL_Txt.Size = UDim2.new(0, 333, 0, 14)
            LBL_Txt.Font = Enum.Font.GothamBold
            LBL_Txt.Text = Info.Name
            LBL_Txt.TextColor3 = Color3.fromRGB(238, 238, 238)
            LBL_Txt.TextScaled = true
            LBL_Txt.TextSize = 14.000
            LBL_Txt.TextWrapped = true
            LBL_Txt.TextXAlignment = Enum.TextXAlignment.Left

            LBL_Stroke.Color = Color3.fromRGB(55, 55, 55)
            LBL_Stroke.Parent = Label
            LBL_Stroke.Name = "LBL_Stroke"
        end

        function elements:Paragraph(Info)
            Info = Info or {}
            Info.Name = Info.Name or "Paragraph"
            Info.Text = Info.Text or "Paragraph"
            
            
            local Paragraph = Instance.new("Frame")
            local PRGRPH_Corner = Instance.new("UICorner")
            local PRGRPH_Title = Instance.new("TextLabel")
            local PRGRPH_Stroke = Instance.new("UIStroke")
            local PRGRPH_Content = Instance.new("TextLabel")
            
            
            Paragraph.Name = "Paragraph"
            Paragraph.Parent = Page
            Paragraph.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
            Paragraph.Position = UDim2.new(0.0126050422, 0, 0.321192056, 0)
            Paragraph.Size = UDim2.new(0, 464, 0, 73)
            
            PRGRPH_Corner.CornerRadius = UDim.new(0, 3)
            PRGRPH_Corner.Name = "PRGRPH_Corner"
            PRGRPH_Corner.Parent = Paragraph
            
            PRGRPH_Title.Name = "PRGRPH_Title"
            PRGRPH_Title.Parent = Paragraph
            PRGRPH_Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            PRGRPH_Title.BackgroundTransparency = 1.000
            PRGRPH_Title.Position = UDim2.new(0.0173893627, 0, 0.0958187953, 0)
            PRGRPH_Title.Size = UDim2.new(0, 333, 0, 14)
            PRGRPH_Title.Font = Enum.Font.GothamBold
            PRGRPH_Title.Text = Info.Name
            PRGRPH_Title.TextColor3 = Color3.fromRGB(238, 238, 238)
            PRGRPH_Title.TextScaled = true
            PRGRPH_Title.TextSize = 14.000
            PRGRPH_Title.TextWrapped = true
            PRGRPH_Title.TextXAlignment = Enum.TextXAlignment.Left
            
            PRGRPH_Stroke.Color = Color3.fromRGB(55, 55, 55)
            PRGRPH_Stroke.Parent = Paragraph
            PRGRPH_Stroke.Name = "PRGRPH_Stroke"
            
            PRGRPH_Content.Name = "PRGRPH_Content"
            PRGRPH_Content.Parent = Paragraph
            PRGRPH_Content.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            PRGRPH_Content.BackgroundTransparency = 1.000
            PRGRPH_Content.Position = UDim2.new(0.0170000009, 0, 0.329999954, 0)
            PRGRPH_Content.Size = UDim2.new(0, 438, 0, 42)
            PRGRPH_Content.SizeConstraint = Enum.SizeConstraint.RelativeXX
            PRGRPH_Content.Font = Enum.Font.GothamBold
            PRGRPH_Content.Text = "Multiple methods, none worked. Sizing in another update."
            PRGRPH_Content.TextColor3 = Color3.fromRGB(159, 159, 159)
            PRGRPH_Content.TextSize = 14.000
            PRGRPH_Content.TextWrapped = true
            PRGRPH_Content.TextXAlignment = Enum.TextXAlignment.Left
            PRGRPH_Content.TextYAlignment = Enum.TextYAlignment.Top
        end

        function elements:Dropdown(Info)
            Info = Info or {}
            Info.Name = Info.Name or "DropDown"
            Info.Options = Info.Options or {"Option 1", "Option 2", "Option 3"}
            Info.OptionTextAlign = Info.OptionTextAlign or "Left"
            Info.Callback = Info.Callback or function() end

            local Dropdown = Instance.new("Frame")
            local DD_Corner = Instance.new("UICorner")
            local DD_Title = Instance.new("TextLabel")
            local DD_Stroke = Instance.new("UIStroke")
            local DD_Image = Instance.new("ImageLabel")
            local DD_ClickRadius_2 = Instance.new("TextButton")
            local DD_Options = Instance.new("ScrollingFrame")
            local DD_Layout = Instance.new("UIListLayout")
            local DDO_Fixer = Instance.new("Frame")

            Dropdown.Name = "Dropdown"
            Dropdown.Parent = Page
            Dropdown.AnchorPoint = Vector2.new(0.5, 0)
            Dropdown.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
            Dropdown.Position = UDim2.new(-0.357142866, 0, 0.0546356589, 0)
            Dropdown.Size = UDim2.new(0, 464, 0, 39)

            DD_Corner.CornerRadius = UDim.new(0, 3)
            DD_Corner.Name = "DD_Corner"
            DD_Corner.Parent = Dropdown

            DD_Title.Name = "DD_Title"
            DD_Title.Parent = Dropdown
            DD_Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            DD_Title.BackgroundTransparency = 1.000
            DD_Title.Position = UDim2.new(0.0173893627, 0, 0.350752622, 0)
            DD_Title.Size = UDim2.new(0, 333, 0, 14)
            DD_Title.Font = Enum.Font.GothamBold
            DD_Title.Text = "Dropdown"
            DD_Title.TextColor3 = Color3.fromRGB(238, 238, 238)
            DD_Title.TextScaled = true
            DD_Title.TextSize = 14.000
            DD_Title.TextWrapped = true
            DD_Title.TextXAlignment = Enum.TextXAlignment.Left

            DD_Stroke.Color = Color3.fromRGB(55, 55, 55)
            DD_Stroke.Parent = Dropdown
            DD_Stroke.Name = "DD_Stroke"

            DD_Image.Name = "DD_Image"
            DD_Image.Parent = Dropdown
            DD_Image.BackgroundColor3 = Color3.fromRGB(168, 168, 168)
            DD_Image.BackgroundTransparency = 1.000
            DD_Image.Position = UDim2.new(0.922926128, 0, 0.196906462, 0)
            DD_Image.Size = UDim2.new(0, 26, 0, 26)
            DD_Image.Image = "rbxassetid://12978228064"
            DD_Image.ImageColor3 = Color3.fromRGB(213, 213, 213)

            DD_ClickRadius_2.Name = "DD_ClickRadius"
            DD_ClickRadius_2.Parent = Dropdown
            DD_ClickRadius_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            DD_ClickRadius_2.BackgroundTransparency = 1.000
            DD_ClickRadius_2.Position = UDim2.new(0.905172408, 0, 0, 0)
            DD_ClickRadius_2.Size = UDim2.new(0, 44, 0, 39)
            DD_ClickRadius_2.Font = Enum.Font.SourceSans
            DD_ClickRadius_2.Text = ""
            DD_ClickRadius_2.TextColor3 = Color3.fromRGB(0, 0, 0)
            DD_ClickRadius_2.TextSize = 14.000

            DD_Options.Name = "DD_Options"
            DD_Options.Parent = Dropdown
            DD_Options.Active = true
            DD_Options.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            DD_Options.BackgroundTransparency = 1.000
            DD_Options.BorderSizePixel = 0
            DD_Options.Position = UDim2.new(0.0129310349, 0, 0.261538476, 0)
            DD_Options.Size = UDim2.new(0, 448, 0, 90)
            DD_Options.ScrollBarThickness = 1
            DD_Options.Visible = false

            DD_Layout.Name = "DD_Layout"
            DD_Layout.Parent = DD_Options
            DD_Layout.HorizontalAlignment = Enum.HorizontalAlignment.Center
            DD_Layout.SortOrder = Enum.SortOrder.LayoutOrder
            DD_Layout.Padding = UDim.new(0, 5)

            DDO_Fixer.Name = "DDO_Fixer"
            DDO_Fixer.Parent = DD_Options
            DDO_Fixer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            DDO_Fixer.BackgroundTransparency = 2.000
            DDO_Fixer.Position = UDim2.new(0.394957989, 0, -1.01051583e-07, 0)
            DDO_Fixer.Size = UDim2.new(0, 100, 0, 0)

            local dropped = false
            DD_ClickRadius_2.MouseButton1Click:Connect(function()
                dropped = not dropped
                if dropped then
                    Tween(Dropdown, {Size = UDim2.new(0, 464, 0, 130)})
                    Tween(DD_Title, {Position = UDim2.new(0.0173893627, 0, 0.0826366842, 0)})
                    Tween(DD_Image, {Rotation = 0})
                    Tween(DD_Image, {Position = UDim2.new(0.922926128, 0, 0.0447325557, 0)})
                    Tween(DD_ClickRadius_2, {Position = UDim2.new(0.905172408, 0, 0, 0)})
                    DD_Options.Visible = true
                else
                    Tween(Dropdown, {Size = UDim2.new(0, 464, 0, 39)})
                    Tween(DD_Title, {Position = UDim2.new(0.0173893627, 0, 0.350752622, 0)})
                    Tween(DD_Image, {Rotation = 180})
                    Tween(DD_Image, {Position = UDim2.new(0.922926128, 0, 0.196906462, 0)})
                    Tween(DD_ClickRadius_2, {Position = UDim2.new(0.905172408, 0, 0, 0)})
                    DD_Options.Visible = false
                end
            end)

            for i, v in pairs(Info.Options) do
                local Option = Instance.new("Frame")
                local O_Corner = Instance.new("UICorner")
                local O_Name = Instance.new("TextLabel")
                local O_Stroke = Instance.new("UIStroke")
                local O_ClickRadius = Instance.new("TextButton")

                local align;
                if Info.OptionTextAlign == "Left" then
                    align = Enum.TextXAlignment.Left
                elseif Info.OptionTextAlign == "Center" then
                    align = Enum.TextXAlignment.Center
                elseif Info.OptionTextAlign == "Right" then
                    align = Enum.TextXAlignment.Right
                end

                Option.Name = "Option"
                Option.Parent = DD_Options
                Option.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
                Option.Position = UDim2.new(0.0046175546, 0, 0.055555556, 0)
                Option.Size = UDim2.new(0, 433, 0, 30)

                O_Corner.CornerRadius = UDim.new(0, 3)
                O_Corner.Name = "O_Corner"
                O_Corner.Parent = Option

                O_Name.Name = "O_Name"
                O_Name.Parent = Option
                O_Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                O_Name.BackgroundTransparency = 1.000
                O_Name.Position = UDim2.new(0.0173893813, 0, 0.250752777, 0)
                O_Name.Size = UDim2.new(0, 418, 0, 14)
                O_Name.Font = Enum.Font.GothamMedium
                O_Name.Text = v
                O_Name.TextColor3 = Color3.fromRGB(220, 220, 220)
                O_Name.TextScaled = true
                O_Name.TextSize = 14.000
                O_Name.TextWrapped = true
                O_Name.TextXAlignment = align

                O_Stroke.Color = Color3.fromRGB(55, 55, 55)
                O_Stroke.Parent = Option
                O_Stroke.Name = "O_Stroke"

                O_ClickRadius.Name = "O_ClickRadius"
                O_ClickRadius.Parent = Option
                O_ClickRadius.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                O_ClickRadius.BackgroundTransparency = 1.000
                O_ClickRadius.Size = UDim2.new(0, 433, 0, 32)
                O_ClickRadius.Font = Enum.Font.SourceSans
                O_ClickRadius.TextColor3 = Color3.fromRGB(0, 0, 0)
                O_ClickRadius.TextSize = 14.000
                O_ClickRadius.TextTransparency = 1.000

                O_ClickRadius.MouseEnter:Connect(function()
                    Tween(Option, {BackgroundColor3 = Color3.fromRGB(25, 25, 25)})
                    Tween(O_Stroke, {Color = Color3.fromRGB(38, 38, 38)})
                end)

                O_ClickRadius.MouseLeave:Connect(function()
                    Tween(Option, {BackgroundColor3 = Color3.fromRGB(30, 30, 30)})
                    Tween(O_Stroke, {Color = Color3.fromRGB(55, 55, 55)})
                end)

                O_ClickRadius.MouseButton1Click:Connect(function()
                    dropped = false
                    Tween(Dropdown, {Size = UDim2.new(0, 464, 0, 39)})
                    Tween(DD_Title, {Position = UDim2.new(0.0173893627, 0, 0.350752622, 0)})
                    Tween(DD_Image, {Rotation = 180})
                    Tween(DD_Image, {Position = UDim2.new(0.922926128, 0, 0.196906462, 0)})
                    Tween(DD_ClickRadius_2, {Position = UDim2.new(0.905172408, 0, 0, 0)})
                    DD_Options.Visible = false
                    DD_Title.Text = v
                    Info.Callback(v)
                end)

                O_ClickRadius.MouseButton1Down:Connect(function()
                    Tween(Option, {BackgroundColor3 = Color3.fromRGB(20, 20, 20)})
                    Tween(O_Stroke, {Color = Color3.fromRGB(38, 38, 38)})
                end)
            
                O_ClickRadius.MouseButton1Up:Connect(function()
                    Tween(Option, {BackgroundColor3 = Color3.fromRGB(30, 30, 30)})
                    Tween(O_Stroke, {Color = Color3.fromRGB(55, 55, 55)})
                end)

                DD_Options.CanvasSize = UDim2.new(0, 0, 0, DD_Layout.AbsoluteContentSize.Y + 60)
            end
        end

        return elements
    end
    return tabSys
end
return lib
