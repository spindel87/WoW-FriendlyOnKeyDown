local key = "9"
local button = CreateFrame("Button","FriendlyTargetOnHold",nil,"SecureActionButtonTemplate")
button:RegisterForClicks("AnyDown","AnyUp")
button:SetAttribute("type","macro")
SecureHandlerWrapScript(button,"OnClick",button,[[
    if down then
    self:SetAttribute("macrotext","/targetlastfriend")
    else
    self:SetAttribute("macrotext","/targetlasttarget")
    end
]])
button:RegisterEvent("PLAYER_LOGIN")
button:SetScript("OnEvent",function(self,event,...)
    SetOverrideBindingClick(self,true,key,"FriendlyTargetOnHold")
end)
