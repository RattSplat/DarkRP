AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")

-- Variables
local Charges = 2
-- Variables

ENT.SeizeReward = 200

function ENT:Initialize()
	self:SetModel("models/props_lab/reciever01a.mdl")
	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetMoveType(MOVETYPE_VPHYSICS)
	self:SetSolid(SOLID_VPHYSICS)
	local phys = self:GetPhysicsObject()
	if phys:IsValid() then phys:Wake() end
	self.sparking = false
	self.damage = 100
	self.IsCooler = true
	self.Entity:SetNWInt("charges", Charges)
end

function ENT:OnTakeDamage(dmg)
	if self.burningup then return end

	self.damage = (self.damage or 100) - dmg:GetDamage()
	if self.damage <= 0 then
			self:Destruct()
			self:Remove()
    if Charges == 0 then
			self:Destruct()
			self:Remove()
		end
	end
end

function ENT:Destruct()
	local vPoint = self:GetPos()
	local effectdata = EffectData()
	effectdata:SetStart(vPoint)
	effectdata:SetOrigin(vPoint)
	effectdata:SetScale(1)
	util.Effect("Explosion", effectdata)
	Notify(self:GetNWEntity("owning_ent"), 1, 4, "Your printer cooler has exploded!")
end