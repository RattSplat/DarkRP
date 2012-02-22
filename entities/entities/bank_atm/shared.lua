ENT.Type = "anim"
ENT.Base = "base_gmodentity"
ENT.PrintName = "Bank_ATM"
ENT.Author = "Gustavgr/Blown25"
ENT.AutomaticFrameAdvance = true 
ENT.Spawnable = true
ENT.AdminSpawnable = true
ENT.Category 		= "Bank ATM"
function ENT:SetAutomaticFrameAdvance( bUsingAnim ) 
	self.AutomaticFrameAdvance = bUsingAnim
end



