local UGCPlayerController = {}
--[[----------------------注册客户端可调用的服务端RPC------------------------]]
function UGCPlayerController:GetAvailableServerRPCs()
    return

end

--[[----------------------接收服务端提示并在客户端显示------------------------]]
function UGCPlayerController:ShowTip(text, Sound_Name)
    if UGCGameSystem.IsServer() then
        return
    end
    L_TipsTool.ShowTips_01(text, nil, Sound_Name)
end
return UGCPlayerController
