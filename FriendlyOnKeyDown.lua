

FriendlyOnKeyDown = { }

function FriendlyOnKeyDown:CreateBinding(key, script)
    local button = CreateFrame("Button","FriendlyTargetOnHold",nil,"SecureActionButtonTemplate")
    button:RegisterForClicks("AnyDown","AnyUp")
    button:SetAttribute("type","macro")
    SecureHandlerWrapScript(button, "OnClick", button, script)
    button:RegisterEvent("PLAYER_LOGIN")
    button:SetScript("OnEvent",function(self,event,...)
        SetOverrideBindingClick(self, true, key, "FriendlyTargetOnHold")
    end)
end


FriendlyOnKeyDown:CreateBinding(9, [[
    if down then
        self:SetAttribute("macrotext","/targetlastfriend")
    else
        self:SetAttribute("macrotext","/targetlasttarget")
    end
]])


----------------------------------------------------------------
----------- On hold key for each friendly ----------------------
----------------------------------------------------------------
-- Remove the FriendlyOnKeyDown:CreateBinding above
-- Uncomment all FriendlyOnKeyDown:CreateBinding below

-- FriendlyOnKeyDown:CreateBinding(6, [[
--     if down then
--         self:SetAttribute("macrotext","/targetfriendplayer 1")
--     else
--         self:SetAttribute("macrotext","/targetlasttarget")
--     end
-- ]])


-- FriendlyOnKeyDown:CreateBinding(7, [[
--     if down then
--         self:SetAttribute("macrotext","/targetfriendplayer 2")
--     else
--         self:SetAttribute("macrotext","/targetlasttarget")
--     end
-- ]])

-- FriendlyOnKeyDown:CreateBinding(8, [[
--     if down then
--         self:SetAttribute("macrotext","/targetfriendplayer 3")
--     else
--         self:SetAttribute("macrotext","/targetlasttarget")
--     end
-- ]])

-- FriendlyOnKeyDown:CreateBinding(9, [[
--     if down then
--         self:SetAttribute("macrotext","/targetfriendplayer 4")
--     else
--         self:SetAttribute("macrotext","/targetlasttarget")
--     end
-- ]])

-- FriendlyOnKeyDown:CreateBinding(0, [[
--     if down then
--         self:SetAttribute("macrotext","/targetfriendplayer 5")
--     else
--         self:SetAttribute("macrotext","/targetlasttarget")
--     end
-- ]])


