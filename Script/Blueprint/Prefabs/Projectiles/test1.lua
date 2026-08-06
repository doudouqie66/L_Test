---@class test1_C:PESkillProjectileBase
---@field StaticMesh UStaticMeshComponent
---@field ParticleSystem UParticleSystemComponent
---@field Box UBoxComponent
--Edit Below--
local test1 = {}
 
--[[
function test1:ReceiveBeginPlay()
    test1.SuperClass.ReceiveBeginPlay(self)
end
--]]

--[[
function test1:ReceiveTick(DeltaTime)
    test1.SuperClass.ReceiveTick(self, DeltaTime)
end
--]]

--[[
function test1:ReceiveEndPlay()
    test1.SuperClass.ReceiveEndPlay(self) 
end
--]]

--[[
function test1:GetReplicatedProperties()
    return
end
--]]

--[[
function test1:GetAvailableServerRPCs()
    return
end
--]]

return test1