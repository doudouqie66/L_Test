L_Enum = L_Enum or {}

--[[-----------------------资源路径-----------------------]] --
local RootPath = UGCMapInfoLib.GetRootLongPackagePath()

L_Enum.Name_ClassPath = {
    MainUI = RootPath .. "Asset/Blueprint/UI/UI_Main.UI_Main_C",
    Tips_01 = RootPath .. "Asset/Blueprint/L_Com/Tips/Tips_01.Tips_01_C"
}

--[[----------------------材质的路径-----------------------]] --
L_Enum.Name_Material = {}

--[[----------------------特效的路径-----------------------]] --
L_Enum.Name_Particle = {}

--[[----------------------蒙太奇资源路径------------------------]]
L_Enum.Name_AnimMontagePath = {}

--[[----------------------Buff名字------------------------]] --

L_Enum.Name_BuffPath = {}

--[[------------------CTRl那里的RPC方法名字----------------------------]] --
L_Enum.Name_RPC = {
    ShowTip = "ShowTip"

}

return L_Enum
