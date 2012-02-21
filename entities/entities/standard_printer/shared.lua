ENT.Type = "anim"
ENT.Base = "base_gmodentity"
ENT.PrintName = "Standard Printer"
ENT.Author = "RattSplat"
ENT.Spawnable = false
ENT.AdminSpawnable = false

function ENT:SetupDataTables()
	self:DTVar("Int",6,"price")
	self:DTVar("Entity",1,"owning_ent")
end