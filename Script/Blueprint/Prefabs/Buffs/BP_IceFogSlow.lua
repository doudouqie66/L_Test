local BP_IceFogSlow = {}
 
-- buff启动条件
--[[
function BP_IceFogSlow:CanApply_BP(OwnerActor)
-- return true
end
--]]

-- buff开始
--[[
function BP_IceFogSlow:OnApply_BP(OwnerActor)

end
--]]

-- buff结束
--[[
function BP_IceFogSlow:OnUnApply_BP(OwnerActor, Reason)

end
--]]

-- buff合并条件，A为当前身上已有buff，B为外来buff，当要挂载外来buff时会判断A.CanMerge(B)
--[[
function BP_IceFogSlow:CanMerge_BP(PersistEffect)
-- return true
end
--]]

-- buff合并，A为当前身上已有buff，B为外来buff，调用A.OnMerge(B)
--[[
function BP_IceFogSlow:OnMerge_BP(PersistEffect)

end
--]]

-- 开启Tick需要SetTickEnable(true)，或buff为间隔触发类型会自动开启
--[[
function BP_IceFogSlow:Tick_BP(OwnerActor, DeltaTime)

end
--]]

--[[
function BP_IceFogSlow:OnInterrupted_BP(OwnerActor)

end
--]]

-- buff总持续时长变化，如修改ApplyTime、修改StackNum
--[[
function BP_IceFogSlow:OnTotalDurationChange_BP(PreTime, CurTime)

end
--]]

-- buff堆叠层数变化
--[[
function BP_IceFogSlow:OnStackChange_BP(PreNum, CurNum)

end
--]]

-- buff触发前条件判断
--[[
function BP_IceFogSlow:CanTrigger_BP()
	return true
end
--]]

-- buff触发效果
--[[
function BP_IceFogSlow:OnTrigger_BP(Delta)

end
--]]

return BP_IceFogSlow