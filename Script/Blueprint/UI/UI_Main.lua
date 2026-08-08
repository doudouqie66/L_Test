---@class UI_Main_C:UUserWidget
---@field Button_0 UButton
---@field Button_34 UButton
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
    self.Button_0.OnClicked:Add(self.Button_0_OnClicked, self);
    -- [Editor Generated Lua] BindingEvent End;
end

function UI_Main:Button_34_OnClicked()
end

function UI_Main:Button_0_OnClicked()
end

-- [Editor Generated Lua] function define End;

return UI_Main
