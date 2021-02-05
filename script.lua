-- ignore my ugly code

local GUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/derekcool38/UI-Librarys/main/cool.lua"))()

local UI = GUI:CreateWindow("AnomicHaxx - V1","length#0001")

local Home = UI:addPage("Local",1,true,6)

local scripts = UI:addPage("Scripts",3,true,6)

Home:addLabel("length#0001","ps: local/teleports are bypassed")
speaker = game.Players.LocalPlayer
loadstring(game:HttpGet("https://raw.githubusercontent.com/Shariiii/Anomic-Stuff/main/Anti%20Anti%20Teleport%20But%20Less%20Taxing.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Shariiii/Anomic-Stuff/main/Anti%20Car%20Stuff.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Shariiii/Anomic-Stuff/main/Anti%20Noclip%20Bypass.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Shariiii/Anomic-Stuff/main/Anti%20Spawn%20CD.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Shariiii/Anomic-Stuff/main/WalkSpeed%20Bypass%20(Open%20Source).lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Shariiii/Anomic-Stuff/main/Inf%20Stamina.lua"))()




Home:addToggle("Noclip",function(value)
    print(value)
    if value == false then 
       if Noclipping then
		Noclipping:Disconnect()
	end
	Clip = true
    else 
       Clip = false
	wait(0.1)
	local function NoclipLoop()
		if Clip == false and speaker.Character ~= nil then
			for _, child in pairs(speaker.Character:GetDescendants()) do
				if child:IsA("BasePart") and child.CanCollide == true and child.Name ~= floatName then
					child.CanCollide = false
				end
			end
		end
	end
	Noclipping = game:GetService('RunService').Stepped:Connect(NoclipLoop)
    end
end)






local LP = UI:addPage("Teleports",3,false,6)
local credits = UI:addPage("Credits",4,false,6)



credits:addLabel("Shariiii/2B","Bypasses")
credits:addLabel("Lumpy","Scripts")
credits:addLabel("Length","Scripts")
credits:addLabel("justVolt","Scripts")
credits:addLabel("Samuell","Scripts")
credits:addLabel("derekcool38","UI Library")







Home:addSlider("WalkSpeed",16,150,function(value)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
end)



Home:addSlider("JumpPower",50,300,function(value)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
end)

scripts:addButton("Instant Jail + Baton Destroy Printer",function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Shariiii/Anomic-Stuff/main/Instant%20Jail%20%2B%20Baton%20Destroy%20Printer%20%2B%20one%20more%20ok%20thing.lua"))()
end)



scripts:addButton("Rainbow Skin/Hair",function()
   local rand = Random.new()
local function randColor()
   return Color3.new(rand:NextNumber(), rand:NextNumber(),rand:NextNumber())
end

while wait(.2) do
local args = {
   [1] = "Color",
   [2] = randColor(),
   [3] = "SkinColor"
}

game:GetService("ReplicatedStorage")["_CS.Events"].EquipAvatarItem:FireServer(unpack(args))
args[2] = randColor()
args[3] = "HairColor"
game:GetService("ReplicatedStorage")["_CS.Events"].EquipAvatarItem:FireServer(unpack(args))
end
end)

scripts:addButton("Money Printer ESP",function()
   while wait() do
   for i,v in pairs(game:GetService("Workspace").Entities:GetChildren()) do
  if v.Name == "Simple Printer" then
       if v.hitbox:FindFirstChild("EspPOG") == null then
          local printer = v.hitbox
     local esp = Instance.new("BillboardGui")
     local text = Instance.new("TextLabel")
     text.Parent = esp
     text.BackgroundTransparency = 1
     text.BorderSizePixel = 0
     text.Text = 'Printer'
     text.Size = UDim2.new(0,100,0,100)
     text.Visible = true
     text.TextColor3 = Color3.new(255,255,255)
     esp.Name = "EspPOG"
     esp.AlwaysOnTop = true
     esp.Parent = printer
     esp.Adornee = printer
     esp.Size = UDim2.new(0,200,0,50)
     end
   end
end
end
end)

scripts:addButton("Open All Doors",function()
   for i,v in pairs(game:GetDescendants()) do
   if v.Name == "Door" then
           v.DoorFire:FireServer()
       end
   end
end)

scripts:addButton("Reset",function()
    game.Players.LocalPlayer.Character.Head:Destroy()
end)

scripts:addButton("Rejoin",function()
local ts = game:GetService("TeleportService")

local p = game:GetService("Players").LocalPlayer

 

ts:Teleport(game.PlaceId, p)
end)



local PLIST = {}

for i,v in pairs(game:GetService("Players"):GetPlayers()) do
    table.insert(PLIST,v.DisplayName)
end





LP:addButton("Arway",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1882.47656, -67.3234253, -1265.74963)   
end)


LP:addButton("Towing Company",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(390.356079, -4.02867031, -1679.65125)   
end)

LP:addButton("Pahrump",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(17.5770168, 7.58996105, 136.736069)   
end)

LP:addButton("Ulmouth Park",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(845.234741, -18.6764565, -107.191719)   
end)

LP:addButton("Airfield",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1845.08936, -21.3859253, -68.8316422)   
end)

LP:addButton("Phesther Dam",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4540.22217, 118.782433, -2626.67676)   
end)

LP:addButton("Okby Steppe",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3873.54614, -2.04217577, -3281.82861)   
end)

LP:addButton("Forestry",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1330.44128, -27.3703003, -2613.14697)   
end)

LP:addButton("Eaphis Plateau",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1766.45569, 77.7546997, 626.270752)   
end)

LP:addButton("Eastdike",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3000.78052, -3.83141994, -3606.52539)   
end)




LP:addDropdown("Teleport to player",PLIST,4,function(value)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =  game.Players[value].Character.HumanoidRootPart.CFrame * CFrame.new(0,2,1)
end)

