ENT.Type = "anim"
ENT.Base = "base_gmodentity"
ENT.PrintName = "Ruby Printer"
ENT.Author = "RattSplat"
ENT.Spawnable = false
ENT.AdminSpawnable = false

function ENT:SetupDataTables()
	self:DTVar("Int",24,"price")
	self:DTVar("Entity",1,"owning_ent")
end