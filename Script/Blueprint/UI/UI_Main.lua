---@class UI_Main_C:UUserWidget
---@field Button_34 UButton
---@field Button_36 UButton
---@field Button_37 UButton
---@field Button_38 UButton
---@field Button_39 UButton
--Edit Below--
local UI_Main = {
    bInitDoOnce = false
}

function UI_Main:Construct()
    self:LuaInit();

end

-- function UI_Main:Tick(MyGeometry, InDeltaTime)

-- end

-- function UI_Main:Destruct()

-- end

-- [Editor Generated Lua] function define Begin:
function UI_Main:LuaInit()
    if self.bInitDoOnce then
        return;
    end
    self.bInitDoOnce = true;
    -- [Editor Generated Lua] BindingProperty Begin:
    -- [Editor Generated Lua] BindingProperty End;

    -- [Editor Generated Lua] BindingEvent Begin:
    self.Button_34.OnClicked:Add(self.Button_34_OnClicked, self);
    self.Button_36.OnClicked:Add(self.Button_36_OnClicked, self);
    self.Button_37.OnClicked:Add(self.Button_37_OnClicked, self);
    self.Button_38.OnClicked:Add(self.Button_38_OnClicked, self);
    self.Button_39.OnClicked:Add(self.Button_39_OnClicked, self);
    -- [Editor Generated Lua] BindingEvent End;
end

function UI_Main:Button_34_OnClicked()
    -- local PC = UGCGameSystem.GetLocalPlayerController()
    L_TipsTool.ShowTips_01("test")
end

function UI_Main:Button_36_OnClicked()
end

function UI_Main:Button_37_OnClicked()
    return nil;
end

function UI_Main:Button_38_OnClicked()
end

function UI_Main:Button_39_OnClicked()
end

-- [Editor Generated Lua] function define End;

return UI_Main
