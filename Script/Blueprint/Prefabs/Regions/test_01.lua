---@class test_01_C:BP_MagicFieldActorBase_C
---@field Box UBoxComponent
---@field ParticleSystem UParticleSystemComponent
--Edit Below--
local test_01 = {}
 
--[[
function test_01:ReceiveBeginPlay()
    test_01.SuperClass.ReceiveBeginPlay(self)
end
--]]

--[[
function test_01:ReceiveTick(DeltaTime)
    test_01.SuperClass.ReceiveTick(self, DeltaTime)
end
--]]

--[[
function test_01:ReceiveEndPlay()
    test_01.SuperClass.ReceiveEndPlay(self) 
end
--]]

--[[
function test_01:GetReplicatedProperties()
    return
end
--]]

--[[
function test_01:GetAvailableServerRPCs()
    return
end
--]]

return test_01