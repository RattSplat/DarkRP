include("shared.lua")

function ENT:Initialize()
end

function ENT:Draw()
	self.Entity:DrawModel()
	
	local Pos = self:GetPos()
	local Ang = self:GetAngles()
	
    local owner = self.dt.owning_ent
	owner = (ValidEntity(owner) and owner:Nick()) or "Unknown"
    
    txt1 = (owner) .. "'s"
	txt2 = "Golden Printer"
	txt3 = "$" ..self:GetNWInt("PrintA")
	
	surface.SetFont("HUDNumber5")
    local TextWidth = surface.GetTextSize(owner)
	local TextWidth2 = surface.GetTextSize(txt2)
	local TextWidth3 = surface.GetTextSize(txt3)
	
	Ang:RotateAroundAxis(Ang:Up(), 90)
	
	cam.Start3D2D(Pos + Ang:Up() * 11.5, Ang, 0.11)
        draw.WordBox(2, -TextWidth*0.5, -78, txt1, "HUDNumber5", Color(255, 201, 14, 140), Color(255,255,255,255))
		draw.WordBox(2, -TextWidth2*0.5, -30, txt2, "HUDNumber5", Color(255, 201, 14, 140), Color(255,255,255,255))
		draw.WordBox(2, -TextWidth3*0.5, 18, txt3, "HUDNumber5", Color(255, 201, 14, 140), Color(255,255,255,255))
	cam.End3D2D()
end

function ENT:Think()
end
