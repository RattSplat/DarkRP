include("shared.lua")

function ENT:Draw()
	self.Entity:DrawModel()
end

function DrawInfoCooler()
	local tr = LocalPlayer():GetEyeTrace()
	if ValidEntity(tr.Entity) and tr.Entity:GetPos():Distance(LocalPlayer():GetPos()) < 400 then
		if tr.Entity:GetClass() == "money_printer_cooler" then
			local ent = tr.Entity
			local pos = ent:GetPos()

			pos.z = pos.z + 8
			pos = pos:ToScreen()

			local owner = ""
			if ValidEntity(ent:GetNWEntity("owning_ent")) then
				owner = ent:GetNWEntity("owning_ent"):Nick()
			end
			local text = owner .. "Printer Cooler\nCharges: "..tr.Entity:GetNWInt("charges")

			draw.DrawText(text, "TargetID", pos.x + 1, pos.y + 1, Color(0, 0, 0, 200), 1)
			draw.DrawText(text, "TargetID", pos.x, pos.y, Color(255, 255, 255, 200), 1)
		end
	end
end
hook.Add( "HUDPaint", "DrawInfoCooler", DrawInfoCooler ) 