---@class Test_1_C:BP_UGCSmoke_Projectile_Template_C
--Edit Below--
local Test_1 = {}

--[[
function Test_1:ReceiveLaunchBullet()
    Test_1.SuperClass.ReceiveLaunchBullet(self)
end
--]]

--[[
function Test_1:ReceiveOnImpact(HitResult)
    Test_1.SuperClass.ReceiveOnImpact(self,HitResult)
end
--]]

--[[
function Test_1:ReceiveOnBounce(HitResult, ImpactVelocity)
    Test_1.SuperClass.ReceiveOnBounce(self,HitResult, ImpactVelocity)
end
--]]

--[[
function Test_1:ReceivePlayExplosionEffect(ExplosionTarget)
    Test_1.SuperClass.ReceivePlayExplosionEffect(self,ExplosionTarget)
end
--]]

--[[
function Test_1:TickMovementPath(DeltaTime)
    Test_1.SuperClass.TickMovementPath(self,DeltaTime)
end
--]]

return Test_1