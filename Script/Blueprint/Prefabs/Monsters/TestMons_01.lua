---@class TestMons_01_C:BP_UGC_GenericMobPawn_Base_C
---@field ParticleSystem1 UParticleSystemComponent
---@field ParticleSystem UParticleSystemComponent
---@field HitBox UCapsuleComponent
--Edit Below--
local TestMons_01 = {}

local Follow_Stop_Distance = 50 -- 跟随玩家时的停止距离
local Follow_Update_Interval = 0.25 -- 跟随目标位置的更新间隔
local Follow_Stop_Reason = "PetFollow" -- 停止怪物行为树的原因

--[[----------------------初始化宠物跟随状态------------------------]]
function TestMons_01:ReceiveBeginPlay()
    TestMons_01.SuperClass.ReceiveBeginPlay(self)
    self.Is_Follow_Initialized = false
    if not self:HasAuthority() then
        return
    end

    self.Follow_Timer = UGCTimerUtility.CreateLuaTimer(Follow_Update_Interval, function()
        self:FollowPlayer()
    end, true)
end

--[[----------------------持续跟随第一个玩家------------------------]]
function TestMons_01:FollowPlayer()
    if not self.Is_Follow_Initialized then
        UGCGenericCharacterSystem.StopBehavior(self, Follow_Stop_Reason)
        self.Is_Follow_Initialized = true
    end

    local Player_Pawns = UGCGameSystem.GetAllPlayerPawn()
    local Follow_Target = Player_Pawns[1]
    if Follow_Target then
        UGCGenericCharacterSystem.MoveTo(self, Follow_Target:K2_GetActorLocation(), Follow_Stop_Distance)
    else
        UGCGenericCharacterSystem.StopMove(self)
    end
end

--[[----------------------停止宠物跟随移动------------------------]]
function TestMons_01:ReceiveEndPlay()
    if self:HasAuthority() then
        if self.Follow_Timer then
            UGCTimerUtility.RemoveLuaTimer(self.Follow_Timer)
        end
        UGCGenericCharacterSystem.StopMove(self)
    end
    TestMons_01.SuperClass.ReceiveEndPlay(self)
end

-- function TestMons_01:GetReplicatedProperties()
--     return
-- end

-- ---受击前置事件
-- ---生效范围：服务器
-- ---@param Damage float 伤害值
-- ---@param EventInstigator AController 伤害来源的Controller
-- ---@param DamageCauser AActor 伤害来源
-- ---@param DamageContext FGameMagnitudeContext  伤害上下文
-- function TestMons_01:PreTakeDamageEvent(Damage, EventInstigator, DamageCauser, DamageContext)

-- end

-- ---受击后置事件
-- ---生效范围：服务器
-- ---@param Damage float 伤害值
-- ---@param EventInstigator AController 伤害来源的Controller
-- ---@param DamageCauser AActor 伤害来源
-- ---@param DamageContext FGameMagnitudeContext  伤害上下文
-- function TestMons_01:PostTakeDamageEvent(Damage, EventInstigator, DamageCauser, DamageContext)

-- end

-- ---受击前置伤害修改
-- ---生效范围：服务器
-- ---@param Damage float 伤害值
-- ---@param EventInstigator AController 伤害来源的Controller
-- ---@param DamageCauser AActor 伤害来源
-- ---@param DamageContext FGameMagnitudeContext  伤害上下文
-- ---@return float 修改后的伤害值
-- function TestMons_01:PreOverrideDamage(Damage, EventInstigator, DamageCauser, DamageContext)
--     return Damage
-- end

-- ---受击后置伤害修改
-- ---生效范围：服务器
-- ---@param Damage float 伤害值
-- ---@param EventInstigator AController 伤害来源的Controller
-- ---@param DamageCauser AActor 伤害来源
-- ---@param DamageContext FGameMagnitudeContext  伤害上下文
-- ---@return float 修改后的伤害值
-- function TestMons_01:PostOverrideDamage(Damage, EventInstigator, DamageCauser, DamageContext)
--     return Damage
-- end

---角色死亡事件
---生效范围：服务器&客户端
---@param Damage float 伤害值
---@param EventInstigator AController 伤害来源的Controller
---@param DamageCauser AActor 伤害来源
---@param FDamageEvent DamageEvent 伤害事件
---@param DamageTypeID int32 伤害类型
function TestMons_01:BPDie(KillingDamage, EventInstigator, DamageCauser, DamageEvent, DamageTypeID)
    if self:HasAuthority() then
        -- 只有服务端才可以掉落
        self.UGCPresetCommonDropItemComponent:StartDrop(self, EventInstigator, {})
    end
end

-- ---状态进入事件
-- ---生效范围：服务器&客户端
-- ---@param DynamicState FGameplayTag 进入的状态
-- function TestMons_01:OnEnterTagState_BP(DynamicState)
--     local Tag = BlueprintGameplayTagLibrary.GetTagName(DynamicState)
--     ugcprint('OnEnterTagState_BP: ' .. Tag)
-- end

-- ---状态退出事件
-- ---生效范围：服务器&客户端
-- ---@param DynamicState FGameplayTag 退出的状态
-- function TestMons_01:OnLeaveTagState_BP(DynamicState)
--     local Tag = BlueprintGameplayTagLibrary.GetTagName(DynamicState)
--     ugcprint('OnLeaveTagState_BP: ' .. Tag)
-- end

-- ---状态打断事件
-- ---生效范围：服务器&客户端
-- ---@param DynamicState FGameplayTag 打断的状态
-- function TestMons_01:OnInterruptTagState_BP(DynamicState)
--     local Tag = BlueprintGameplayTagLibrary.GetTagName(DynamicState)
--     ugcprint('OnInterruptTagState_BP' .. Tag)
-- end

-- ---行为树消息
-- ---生效范围：服务器
-- ---@param NotifyMsg string 消息
-- function TestMons_01:OnBehaviorNotify_BP(NotifyMsg)
--     ugcprint('OnBehaviorNotify_BP: ' .. NotifyMsg)
-- end

-- ---怪物的目标发生变化事件
-- ---生效范围：服务器&客户端
-- ---@param NewTarget AActor 新目标
-- ---@param OldTarget AActor 旧目标
-- function TestMons_01:OnTargetChange_BP(NewTarget, OldTarget)

-- end

return TestMons_01
