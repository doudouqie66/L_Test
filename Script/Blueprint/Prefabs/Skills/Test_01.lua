---@class Test_01_C:PESkillPassiveSkillTemplate_C
---@field AroundNum int32
---@field AroundKey FString
--Edit Below--
local Test_01 = {}

function Test_01:CanGenerate()
    
    local ProjectileList = UGCProjectileSystemV2.GetProjectileListByGroupKey(self:GetOwnerActor(), self.AroundKey)
    if #ProjectileList < self.AroundNum then
        return true
    else
        return false
    end
    
    return true
end

return Test_01