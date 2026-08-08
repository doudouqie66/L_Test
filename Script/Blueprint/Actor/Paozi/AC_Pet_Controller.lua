---@class AC_Pet_Controller_C:AnimalAIController
--Edit Below--
local AC_Pet_Controller = {}
 
--[[
function ActorName:OnPossess(PossessedPawn)
    AC_Pet_Controller.SuperClass.OnPossess(self, PossessedPawn)

    -- local BehaviorTree = UE.LoadObject("填入要加载的BehaviorTree资源路径")
    -- if BehaviorTree ~= nil then
        -- self:RunBehaviorTree()
    -- end
end
--]]

--[[
function AC_Pet_Controller:OnUnpossess(UnpossessedPawn)
    AC_Pet_Controller.SuperClass.OnUnpossess(self, UnpossessedPawn)
end
--]]

return AC_Pet_Controller