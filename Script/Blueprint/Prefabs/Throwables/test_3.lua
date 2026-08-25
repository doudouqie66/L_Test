---@class test_3_C:BP_UGCSmoke_Projectile_Template_C
--Edit Below--
local test_3 = {}

--[[
function test_3:ReceiveLaunchBullet()
    test_3.SuperClass.ReceiveLaunchBullet(self)
end
--]]

--[[
function test_3:ReceiveOnImpact(HitResult)
    test_3.SuperClass.ReceiveOnImpact(self,HitResult)
end
--]]

--[[
function test_3:ReceiveOnBounce(HitResult, ImpactVelocity)
    test_3.SuperClass.ReceiveOnBounce(self,HitResult, ImpactVelocity)
end
--]]

--[[
function test_3:ReceivePlayExplosionEffect(ExplosionTarget)
    test_3.SuperClass.ReceivePlayExplosionEffect(self,ExplosionTarget)
end
--]]

--[[
function test_3:TickMovementPath(DeltaTime)
    test_3.SuperClass.TickMovementPath(self,DeltaTime)
end
--]]

return test_3