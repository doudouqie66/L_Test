local UGCPlayerController = {}
--[[----------------------注册客户端可调用的服务端RPC------------------------]]
function UGCPlayerController:GetAvailableServerRPCs()
    return

end

function UGCPlayerController:ReceiveBeginPlay()
    self.SuperClass.ReceiveBeginPlay(self)
    self:Init()

end

function UGCPlayerController:Init()

    -- 2秒后执行,等待玩家角色初始化完成
    UGCTimerUtility.CreateLuaTimer(2.0, function()
        if self:HasAuthority() == true then
            local PP = self:GetPlayerCharacterSafety()
            UGCBackpackSystemV2.AddItemV2(PP, 8310001, 100) -- v2背包发放物品
            UGCBackpackSystemV2.AddItemV2(PP, 8310002, 100) -- v2背包发放物品

        end
    end, false)
end

--[[----------------------接收服务端提示并在客户端显示------------------------]]
function UGCPlayerController:ShowTip(text, Sound_Name)
    if UGCGameSystem.IsServer() then
        return
    end
    L_TipsTool.ShowTips_01(text, nil, Sound_Name)
end
return UGCPlayerController
