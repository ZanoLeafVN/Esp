local bobesplib {}

local ws = game:GetService("Workspace")
local cam = ws.CurrentCamera
local rs = game:GetService("RunService")
local worldToViewportPoint = cam.worldToViewportPoint

function bobesplib:addtextobjects(obj, color, objectshehe, text, textsize)
local bill = Instance.new("BillboardGui", obj)
bill.Name = "ESPLIBBOB"
bill.AlwaysOnTop = true
bill.Size = UDim2.new(0,400,0,100)
bill.Adornee = objectshehe
bill.Enabled = true
bill.MaxDistance = 2000
        local txt = Instance.new("TextLabel",bill)
        txt.AnchorPoint = Vector2.new(0.5,0.5)
        txt.BackgroundTransparency = 1
        txt.BackgroundColor3 = color
        txt.TextColor3 = color
        txt.Size = UDim2.new(1,0,0,50)
        txt.Position = UDim2.new(0.5,0,0.6,0)
        txt.Font = Enum.Font.SourceSans
        txt.FontSize = Enum.FontSize.Size10
        txt.TextSize = textsize
        txt.Text = text
        Instance.new("UIStroke",txt)
end

function bobesplib:removetextobjects(obj)

for _,obj in pairs(game.Workspace:GetDescendants()) do
if obj:FindFirstChild("ESPLIBBOB") then
obj.ESPLIBBOB:Destroy()
             end
         end
     end
     
function bobesplib:addlineobjects(objto, color)
local line = cam:worldToViewportPoint(objto)
line.Thickness = 1
line.Transparency = 0
line.Color = color
line.From = Vector2.new(cam.worldToViewportPoint / 2, cam.worldToViewportPoint / 1)
line.To = objto
local OnScreen = cam:worldToViewportPoint(objto)
if OnScreen then
line.Visible = true
else
line.Visible = false
end
rs.Stepped:Wait(1)
line:Remove()
end

function esplib:removelineonject(obj)
if line.To == obj then
line:Remove()
end
end

return bobesplib
